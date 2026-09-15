---@diagnostic disable: undefined-global, undefined-field

-- AA Planner for Project Triune / MacroQuest
-- Standalone ImGui planner and native Lua AA spender.
-- Run with: /lua run aaplanner

local mq = require('mq')
local ImGui = require('ImGui')

local APP_NAME = 'Project Triune AA Planner'
local VERSION = '0.2.3'
local open = true

-- Authoritative Project Triune prerequisite data generated from the server database.
-- Structural prerequisite decisions use this data; live character state remains
-- authoritative for trained ranks.
local prereqDB = nil
local prereqDBLoadError = nil
do
    local ok, data = pcall(require, 'PTAAPrereqData')
    if ok and type(data) == 'table' and tonumber(data.schemaVersion) == 1 then
        prereqDB = data
    else
        prereqDBLoadError = ok
            and ('PTAAPrereqData returned unsupported data/schema: ' .. tostring(data and data.schemaVersion))
            or tostring(data)
    end
end

-- Build-time diagnostic policy:
--   Test/internal builds: set VERBOSE_DEBUG = true so automatic snapshots are captured.
--   Release candidates/releases: leave this false; /aaplanner debug still forces a full snapshot.
local VERBOSE_DEBUG = false

local configDir = mq.configDir
if not configDir or configDir == '' then
    pcall(function() configDir = mq.TLO.MacroQuest.Path('config')() end)
end
configDir = configDir or '.'

local sharedSaveFile = configDir .. '/aaplanner_lists.lua'
local sharedLockDir = sharedSaveFile .. '.lock'
local sharedLockOwnerFile = sharedLockDir .. '/owner.txt'
local characterSaveFile = nil
local TAB_NAMES = { [1] = 'General', [2] = 'Archetype', [3] = 'Class', [4] = 'Special' }
local TAB_IDS = { General = 1, Archetype = 2, Class = 3, Special = 4 }
local state = {
    selectedTab = 1,
    search = '',
    hideMaxed = false,
    catalog = {},
    catalogByName = {},
    catalogByKey = {},
    catalogOccurrenceCounts = {},
    catalogGeneration = 0,
    prerequisiteCache = {},
    prerequisiteRuntimeStatus = {},
    plan = {},
    planGeneration = 0,
    savedLists = {},
    saveName = '',
    selectedSaved = '',
    importText = '',
    showTransfer = false,
    transferMode = 'Import',
    status = 'Ready. Refresh the AA catalog while logged into your Project Triune character.',
    statusKind = 'info',
    statusExpiresAt = nil,
    scanRequested = true,
    enableRequested = false,
    pendingListSave = nil,
    pendingListDelete = nil,
    pendingAddValidation = nil,
    dirty = false,
    autoManageActive = false,
    autoSpendEnabled = false,
    skipUnmetPrerequisites = false,
    aaPoints = 0,
    queueCost = 0,
    queueCostComplete = true,
    topPriorityName = nil,
    topPriorityRank = nil,
    compactMode = false,
    windowResizeRequested = false,
    maintenanceAt = 0,
    sharedListsRefreshAt = 0,
    pendingPurchase = nil,
    manualSpendQueued = false,
    nextSpendAt = 0,
    lastObservedAAPoints = nil,
    scanStats = { window = 'none', listControls = 0, rows = 0, cells = 0 },
    -- Individually toggleable pre-purchase safety checks. Moving/Combat/XTargets
    -- default off since they're nearly always true while pulling/hunting with
    -- an auto-combat plugin; Casting/Navigating/AutoFire default on since
    -- interrupting those is more likely to fail or cause a bad click.
    safetyCheckCasting = true,
    safetyCheckMoving = false,
    safetyCheckNavigating = true,
    safetyCheckCombat = false,
    safetyCheckAutofire = true,
    safetyCheckXTargets = false,
}



local function normalizedCatalogName(name)
    return tostring(name or ''):lower():gsub('^%s+', ''):gsub('%s+$', '')
end

local function catalogBaseKey(name, tab)
    return string.format('%d|%s', tonumber(tab) or 0, normalizedCatalogName(name))
end

local function catalogKey(name, tab, occurrence)
    return string.format('%s|%d', catalogBaseKey(name, tab), math.max(1, tonumber(occurrence) or 1))
end

local function getCatalogAA(name, tab, occurrence)
    name = tostring(name or '')
    tab = tonumber(tab) or 0
    if tab > 0 then
        local exact = state.catalogByKey[catalogKey(name, tab, occurrence)]
        if exact then return exact end
    end
    return state.catalogByName[name:lower()]
end

local function catalogOccurrenceTotal(name, tab)
    return tonumber(state.catalogOccurrenceCounts[catalogBaseKey(name, tab)] or 0) or 0
end

local function entryIdentity(entry)
    if not entry then return '' end
    return catalogKey(entry.name, entry.tab, entry.occurrence)
end

local function trim(value)
    return tostring(value or ''):match('^%s*(.-)%s*$') or ''
end

local function setStatus(message, kind, durationSeconds)
    state.status = tostring(message or '')
    state.statusKind = kind or 'info'
    if durationSeconds == nil and state.statusKind == 'good' then durationSeconds = 10 end
    state.statusExpiresAt = durationSeconds and (os.time() + durationSeconds) or nil
    print(string.format('\at[AA Planner]\ax %s', state.status))
end

local function clearExpiredStatus()
    if state.statusExpiresAt and os.time() >= state.statusExpiresAt then
        state.status = ''
        state.statusKind = 'info'
        state.statusExpiresAt = nil
    end
end

local function monotonicSeconds()
    local value
    pcall(function() value = tonumber(mq.gettime()) end)
    if value then return value / 1000 end
    return os.clock()
end

local function escapeLuaString(value)
    return string.format('%q', tostring(value or ''))
end

local function copyPlan(plan)
    local result = {}
    for i, entry in ipairs(plan or {}) do
        result[i] = { name = entry.name, rank = entry.rank, tab = entry.tab, occurrence = tonumber(entry.occurrence) or 1 }
    end
    return result
end

local function sanitizeFilePart(value)
    value = trim(value)
    if value == '' or value == 'NULL' then return nil end
    return value:gsub('[^%w_%-]', '_')
end

local function resolveCharacterSaveFile()
    if characterSaveFile then return characterSaveFile end
    local character = sanitizeFilePart(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '')
    local server = ''
    pcall(function() server = sanitizeFilePart(mq.TLO.MacroQuest.Server() or '') or '' end)
    if server == '' then
        pcall(function() server = sanitizeFilePart(mq.parse('${MacroQuest.Server}')) or '' end)
    end
    if not character or server == '' then return nil end
    characterSaveFile = configDir .. '/PTAAPlanner_' .. server .. '_' .. character .. '.lua'
    return characterSaveFile
end

local function copySavedLists(lists)
    local result = {}
    for name, list in pairs(lists or {}) do
        if type(name) == 'string' and type(list) == 'table' then
            result[name] = copyPlan(list)
        end
    end
    return result
end

local function buildSharedDataText(lists)
    lists = lists or state.savedLists
    local lines = { 'return {', '  formatVersion = 3,', '  lists = {' }
    local names = {}
    for name in pairs(lists) do names[#names + 1] = name end
    table.sort(names, function(a, b) return a:lower() < b:lower() end)
    for _, name in ipairs(names) do
        lines[#lines + 1] = string.format('    [%s] = {', escapeLuaString(name))
        for _, entry in ipairs(lists[name]) do
            lines[#lines + 1] = string.format('      {name=%s, rank=%s, tab=%d, occurrence=%d},',
                escapeLuaString(entry.name), escapeLuaString(entry.rank), tonumber(entry.tab) or 0,
                math.max(1, tonumber(entry.occurrence) or 1))
        end
        lines[#lines + 1] = '    },'
    end
    lines[#lines + 1] = '  }'
    lines[#lines + 1] = '}'
    return table.concat(lines, '\n') .. '\n'
end

local function buildCharacterDataText()
    local lines = { 'return {', '  formatVersion = 3,' }
    lines[#lines + 1] = '  current = {'
    for _, entry in ipairs(state.plan) do
        lines[#lines + 1] = string.format('    {name=%s, rank=%s, tab=%d, occurrence=%d},',
            escapeLuaString(entry.name), escapeLuaString(entry.rank), tonumber(entry.tab) or 0,
            math.max(1, tonumber(entry.occurrence) or 1))
    end
    lines[#lines + 1] = '  },'
    lines[#lines + 1] = string.format('  compactMode = %s,', tostring(state.compactMode == true))
    lines[#lines + 1] = string.format('  skipUnmetPrerequisites = %s,', tostring(state.skipUnmetPrerequisites == true))
    lines[#lines + 1] = string.format('  safetyCheckCasting = %s,', tostring(state.safetyCheckCasting == true))
    lines[#lines + 1] = string.format('  safetyCheckMoving = %s,', tostring(state.safetyCheckMoving == true))
    lines[#lines + 1] = string.format('  safetyCheckNavigating = %s,', tostring(state.safetyCheckNavigating == true))
    lines[#lines + 1] = string.format('  safetyCheckCombat = %s,', tostring(state.safetyCheckCombat == true))
    lines[#lines + 1] = string.format('  safetyCheckAutofire = %s,', tostring(state.safetyCheckAutofire == true))
    lines[#lines + 1] = string.format('  safetyCheckXTargets = %s,', tostring(state.safetyCheckXTargets == true))
    lines[#lines + 1] = '}'
    return table.concat(lines, '\n') .. '\n'
end

local function fileExists(path)
    local file = io.open(path, 'rb')
    if not file then return false end
    file:close()
    return true
end

local function loadLuaTableFile(path, allowMissing)
    if not fileExists(path) then
        if allowMissing then return {}, nil end
        return nil, 'File does not exist: ' .. tostring(path)
    end
    local chunk, loadErr = loadfile(path)
    if not chunk then return nil, 'Could not parse ' .. tostring(path) .. ': ' .. tostring(loadErr) end
    local ok, data = pcall(chunk)
    if not ok or type(data) ~= 'table' then
        return nil, 'Could not load ' .. tostring(path) .. ': ' .. tostring(data)
    end
    return data, nil
end

local function commandSucceeded(a, b, c)
    if a == true then return true end
    if type(a) == 'number' then return a == 0 end
    return b == 'exit' and tonumber(c) == 0
end

local function shellQuote(path)
    path = tostring(path or '')
    if package.config:sub(1, 1) == '\\' then
        return '"' .. path:gsub('"', '""') .. '"'
    end
    return "'" .. path:gsub("'", "'\\''") .. "'"
end

local function makeDirectory(path)
    local command
    if package.config:sub(1, 1) == '\\' then
        command = 'mkdir ' .. shellQuote(path) .. ' >nul 2>nul'
    else
        command = 'mkdir ' .. shellQuote(path) .. ' >/dev/null 2>&1'
    end
    local a, b, c = os.execute(command)
    return commandSucceeded(a, b, c)
end

local function removeDirectory(path)
    local command
    if package.config:sub(1, 1) == '\\' then
        command = 'rmdir ' .. shellQuote(path) .. ' >nul 2>nul'
    else
        command = 'rmdir ' .. shellQuote(path) .. ' >/dev/null 2>&1'
    end
    local a, b, c = os.execute(command)
    return commandSucceeded(a, b, c)
end

local function readSharedLockOwner()
    local file = io.open(sharedLockOwnerFile, 'rb')
    if not file then return nil, nil end
    local lockTime = tonumber(file:read('*l') or '')
    local token = trim(file:read('*l') or '')
    file:close()
    return lockTime, token ~= '' and token or nil
end

local function releaseSharedLock(expectedToken, force)
    if not force and expectedToken then
        local _, currentToken = readSharedLockOwner()
        if currentToken and currentToken ~= expectedToken then
            return false
        end
    end
    os.remove(sharedLockOwnerFile)
    removeDirectory(sharedLockDir)
    return true
end

local function acquireSharedLock(timeoutSeconds)
    timeoutSeconds = tonumber(timeoutSeconds) or 5
    local deadline = monotonicSeconds() + timeoutSeconds
    local character = sanitizeFilePart(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '') or 'unknown'
    local token = string.format('%s_%d_%d_%d', character, os.time(),
        math.floor(monotonicSeconds() * 1000), math.random(100000, 999999))

    while monotonicSeconds() < deadline do
        if makeDirectory(sharedLockDir) then
            local owner, err = io.open(sharedLockOwnerFile, 'wb')
            if not owner then
                removeDirectory(sharedLockDir)
                return false, 'Could not create shared-list lock owner file: ' .. tostring(err)
            end
            owner:write(tostring(os.time()), '\n')
            owner:write(token, '\n')
            owner:close()
            return true, token
        end

        local lockTime = readSharedLockOwner()
        if lockTime and os.time() - lockTime > 30 then
            -- A shared-list mutation should take milliseconds. A lock older
            -- than 30 seconds is treated as abandoned after a crashed client.
            releaseSharedLock(nil, true)
        else
            mq.delay(50)
        end
    end
    return false, 'Timed out waiting for another PTAAPlanner instance to finish updating shared named lists.'
end

local function makeTempPath(path)
    local character = sanitizeFilePart(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '') or 'unknown'
    local token = string.format('%s_%d_%d_%d', character, os.time(),
        math.floor(monotonicSeconds() * 1000), math.random(100000, 999999))
    return path .. '.tmp.' .. token
end

local function verifyLuaTableFile(path, verifier)
    local data, err = loadLuaTableFile(path, false)
    if not data then return false, err end
    if verifier then
        local verified, verifyErr = verifier(data)
        if not verified then return false, verifyErr or 'Verification failed.' end
    end
    return true
end

local function replaceFileFromTemp(tempPath, destinationPath)
    -- POSIX os.rename replaces atomically. On Windows it normally refuses to
    -- replace an existing destination, so try MoveFileExW via LuaJIT FFI first.
    local renamed = os.rename(tempPath, destinationPath)
    if renamed then return true end

    if package.config:sub(1, 1) == '\\' then
        local ffiOK, ffi = pcall(require, 'ffi')
        if ffiOK and ffi then
            pcall(function()
                ffi.cdef[[
                    int MoveFileExA(const char *lpExistingFileName, const char *lpNewFileName, unsigned long dwFlags);
                ]]
            end)
            local kernelOK, kernel32 = pcall(ffi.load, 'kernel32')
            if kernelOK and kernel32 then
                local ok, result = pcall(function()
                    return kernel32.MoveFileExA(tempPath, destinationPath, 0x00000001 + 0x00000008)
                end)
                if ok and tonumber(result) ~= 0 then return true end
            end
        end
    end

    -- Last-resort fallback for runtimes without replacement-capable rename.
    -- The fully written and verified temp file is preserved until this point,
    -- so this avoids ever exposing a partially written destination.
    os.remove(destinationPath)
    local ok, err = os.rename(tempPath, destinationPath)
    if ok then return true end
    return false, 'Could not replace destination file: ' .. tostring(err)
end

local function writeVerifiedLuaTable(path, text, verifier)
    if not path then return false, 'Character/server identity is not available yet.' end

    local tempPath = makeTempPath(path)
    local file, err = io.open(tempPath, 'wb')
    if not file then return false, err end

    local writeOK, writeErr = pcall(function()
        file:write(text)
        file:flush()
        file:close()
    end)
    if not writeOK then
        pcall(function() file:close() end)
        os.remove(tempPath)
        return false, 'Temporary write failed: ' .. tostring(writeErr)
    end

    local verified, verifyErr = verifyLuaTableFile(tempPath, verifier)
    if not verified then
        os.remove(tempPath)
        return false, 'Temporary-file verification failed: ' .. tostring(verifyErr)
    end

    local replaced, replaceErr = replaceFileFromTemp(tempPath, path)
    if not replaced then
        os.remove(tempPath)
        return false, replaceErr
    end

    local finalVerified, finalErr = verifyLuaTableFile(path, verifier)
    if not finalVerified then
        return false, 'Final verification failed: ' .. tostring(finalErr)
    end
    return true
end

local function readSharedData()
    local data, err = loadLuaTableFile(sharedSaveFile, true)
    if not data then return nil, err end
    if data.lists == nil then data.lists = {} end
    if type(data.lists) ~= 'table' then
        return nil, 'Shared named-list file contains an invalid lists value.'
    end
    return data, nil
end

local function refreshSharedListsFromDisk()
    local data = readSharedData()
    if not data then return false end
    state.savedLists = copySavedLists(data.lists)
    if state.selectedSaved ~= '' and not state.savedLists[state.selectedSaved] then
        state.selectedSaved = ''
    end
    return true
end

local function mutateSharedLists(description, mutation)
    local locked, lockTokenOrErr = acquireSharedLock(5)
    if not locked then return false, lockTokenOrErr end
    local lockToken = lockTokenOrErr

    local callOK, success, resultOrError = pcall(function()
        -- Re-read only after the lock is held. This is what prevents a stale
        -- PTAAPlanner instance from overwriting another instance's changes.
        local data, readErr = readSharedData()
        if not data then return false, readErr end

        local lists = copySavedLists(data.lists)
        local shouldWrite, mutationResult = mutation(lists, data)
        if shouldWrite == false then
            state.savedLists = lists
            return true, mutationResult
        end

        local expectedLists = copySavedLists(lists)
        local ok, writeErr = writeVerifiedLuaTable(sharedSaveFile, buildSharedDataText(expectedLists), function(written)
            if type(written.lists) ~= 'table' then
                return false, 'Shared-list verification failed: lists table missing.'
            end
            local expectedCount, actualCount = 0, 0
            for _ in pairs(expectedLists) do expectedCount = expectedCount + 1 end
            for _ in pairs(written.lists) do actualCount = actualCount + 1 end
            if actualCount ~= expectedCount then
                return false, string.format('Shared-list verification failed: expected %d lists, read back %d.',
                    expectedCount, actualCount)
            end
            for name, expectedPlan in pairs(expectedLists) do
                local actualPlan = written.lists[name]
                if type(actualPlan) ~= 'table' or #actualPlan ~= #expectedPlan then
                    return false, 'Shared-list verification failed for "' .. tostring(name) .. '".'
                end
            end
            return true
        end)
        if not ok then return false, writeErr end

        local finalData, finalErr = readSharedData()
        if not finalData then return false, finalErr end
        state.savedLists = copySavedLists(finalData.lists)
        return true, mutationResult
    end)

    releaseSharedLock(lockToken)

    if not callOK then
        return false, string.format('Shared-list update "%s" failed: %s', tostring(description), tostring(success))
    end
    return success, resultOrError
end

local function saveNamedList(name, plan)
    return mutateSharedLists('save ' .. tostring(name), function(lists)
        lists[name] = copyPlan(plan)
        return true
    end)
end

local function deleteNamedList(name)
    return mutateSharedLists('delete ' .. tostring(name), function(lists)
        lists[name] = nil
        return true
    end)
end

local function migrateLegacySharedCurrent()
    local migratedName = nil
    local ok, err = mutateSharedLists('migrate v0.2 working list', function(lists, data)
        if type(data.current) ~= 'table' or #data.current == 0 then
            return false
        end
        local baseName = 'Migrated v0.2 Working List'
        migratedName = baseName
        local suffix = 2
        while lists[migratedName] do
            migratedName = string.format('%s (%d)', baseName, suffix)
            suffix = suffix + 1
        end
        lists[migratedName] = copyPlan(data.current)
        return true
    end)
    return ok, err, migratedName
end

local function writeCharacterData()
    local path = resolveCharacterSaveFile()
    local expectedPlanCount = #state.plan
    local ok, err = writeVerifiedLuaTable(path, buildCharacterDataText(), function(data)
        if type(data.current) ~= 'table' then return false, 'Character-state verification failed: current list missing.' end
        if #data.current ~= expectedPlanCount then
            return false, string.format('Character-state verification failed: expected %d priorities, read back %d.', expectedPlanCount, #data.current)
        end
        if data.skipUnmetPrerequisites ~= (state.skipUnmetPrerequisites == true) then
            return false, 'Character-state verification failed: prerequisite-skip setting did not match.'
        end
        return true
    end)
    if ok then state.dirty = false end
    return ok, err
end

local function loadCharacterSettings(data)
    if type(data.current) == 'table' then state.plan = copyPlan(data.current) end
    if type(data.compactMode) == 'boolean' then state.compactMode = data.compactMode end
    if type(data.skipUnmetPrerequisites) == 'boolean' then
        state.skipUnmetPrerequisites = data.skipUnmetPrerequisites
    end
    if type(data.safetyCheckCasting) == 'boolean' then state.safetyCheckCasting = data.safetyCheckCasting end
    if type(data.safetyCheckMoving) == 'boolean' then state.safetyCheckMoving = data.safetyCheckMoving end
    if type(data.safetyCheckNavigating) == 'boolean' then state.safetyCheckNavigating = data.safetyCheckNavigating end
    if type(data.safetyCheckCombat) == 'boolean' then state.safetyCheckCombat = data.safetyCheckCombat end
    if type(data.safetyCheckAutofire) == 'boolean' then state.safetyCheckAutofire = data.safetyCheckAutofire end
    if type(data.safetyCheckXTargets) == 'boolean' then state.safetyCheckXTargets = data.safetyCheckXTargets end
end

local function loadSavedData()
    local sharedData, sharedErr = readSharedData()
    if sharedData then
        state.savedLists = copySavedLists(sharedData.lists)
    elseif sharedErr then
        print('\ar[AA Planner]\ax Could not load shared named lists: ' .. tostring(sharedErr))
    end

    local path = resolveCharacterSaveFile()
    local characterData = nil
    if path and fileExists(path) then
        local data, err = loadLuaTableFile(path, false)
        if data then
            characterData = data
            loadCharacterSettings(data)
        else
            print('\ar[AA Planner]\ax Could not load character state: ' .. tostring(err))
        end
    end
    if characterData then return end

    -- v0.2 stored one working queue for every character in a shared file.
    -- Migrate it while holding the shared-list lock so simultaneous clients
    -- cannot create duplicate migration lists or overwrite each other's data.
    local migrationOK, migrationErr, migrationName = migrateLegacySharedCurrent()
    if migrationOK and migrationName then
        print('\at[AA Planner]\ax Preserved the old shared v0.2 working queue as "' .. migrationName .. '". New character queues now start independently.')
    elseif not migrationOK then
        print('\ar[AA Planner]\ax Could not persist migrated v0.2 working list: ' .. tostring(migrationErr))
    end

    -- Legacy non-queue settings are safe to use as initial defaults for a
    -- character that does not have its own state file yet.
    if sharedData then
        local legacyCurrent = sharedData.current
        sharedData.current = nil
        loadCharacterSettings(sharedData)
        sharedData.current = legacyCurrent
    end
    state.plan = {}
    state.dirty = true
end

local function markDirty()
    state.dirty = true
end

local function markPlanDirty()
    state.dirty = true
    state.planGeneration = (tonumber(state.planGeneration) or 0) + 1
end

local function safeAAValue(aa, member, default)
    local value = default
    pcall(function()
        if aa and aa() and aa[member] then
            local result = aa[member]()
            if result ~= nil then value = result end
        end
    end)
    return value
end

local function getCurrentAAPoints()
    local points = 0
    pcall(function() points = tonumber(mq.TLO.Me.AAPoints() or 0) or 0 end)
    return points
end

local function getAAProgress(entryOrName, tab, occurrence)
    local entry = type(entryOrName) == 'table' and entryOrName or nil
    local name = entry and entry.name or entryOrName
    tab = entry and entry.tab or tab
    occurrence = entry and entry.occurrence or occurrence

    local cached = getCatalogAA(name, tab, occurrence)

    -- Exact AA-window occurrence data is authoritative when we have it. This
    -- avoids collapsing same-name AAs onto whichever object a name-based TLO
    -- happens to return.
    if cached and tonumber(cached.tab) == tonumber(tab)
        and math.max(1, tonumber(cached.occurrence) or 1) == math.max(1, tonumber(occurrence) or 1)
        and cached.windowRank ~= nil then
        local rank = tonumber(cached.windowRank) or 0
        local maxRank = tonumber(cached.maxRank) or 0
        local cost = math.max(0, tonumber(cached.windowCost) or 0)
        return rank, maxRank, cost, 'AAWindowOccurrence'
    end

    local personal = mq.TLO.Me.AltAbility(name)
    local global = mq.TLO.AltAbility(name)
    local rank = tonumber(safeAAValue(personal, 'Rank', 0)) or 0
    local maxRank = tonumber(safeAAValue(personal, 'MaxRank', 0)) or 0
    if maxRank <= 0 then maxRank = tonumber(safeAAValue(global, 'MaxRank', 0)) or 0 end

    local windowCost = cached and tonumber(cached.windowCost or 0) or 0
    local windowRank = cached and tonumber(cached.windowRank) or nil
    if windowCost > 0 and windowRank ~= nil and windowRank == rank then
        return rank, maxRank, windowCost, 'AAWindow'
    end

    local cost = tonumber(safeAAValue(personal, 'Cost', 0)) or 0
    if cost > 0 then return rank, maxRank, cost, 'PersonalTLO' end

    cost = tonumber(safeAAValue(global, 'Cost', 0)) or 0
    if cost > 0 then return rank, maxRank, cost, 'GlobalTLO' end

    return rank, maxRank, 0, 'Unresolved'
end

local function getEntryTarget(entry, maxRank)
    if tostring(entry.rank):upper() == 'M' then return tonumber(maxRank) or 0 end
    return tonumber(entry.rank) or 0
end

local function isEntryComplete(entry)
    local rank, maxRank = getAAProgress(entry)
    local target = getEntryTarget(entry, maxRank)
    return target > 0 and rank >= target
end

local function getRankCostMap(entry)
    local costs = {}
    local rank, _, cost = getAAProgress(entry)
    if cost > 0 then costs[rank + 1] = cost end
    return costs
end

local function remainingCostForEntry(entry)
    local rank, maxRank, nextCost = getAAProgress(entry)
    local target = getEntryTarget(entry, maxRank)
    if target <= 0 or rank >= target then return 0, true end

    local costs = getRankCostMap(entry)
    local total = 0
    local complete = true
    for wanted = rank + 1, target do
        local cost = costs[wanted]
        if cost == nil and wanted == rank + 1 and nextCost > 0 then cost = nextCost end
        if cost == nil then complete = false else total = total + cost end
    end
    return total, complete
end


local appendSupportLog

local function prereqDBTabKey(tab)
    tab = tonumber(tab) or 0
    if tab == 1 then return 'general' end
    if tab == 2 then return 'archetype' end
    if tab == 3 then return 'class' end
    if tab == 4 then return 'special' end
    return nil
end

local function prereqDBRuleSignature(rule)
    if type(rule) ~= 'table' or type(rule.requires) ~= 'table' or #rule.requires == 0 then
        return 'none'
    end
    local parts = {}
    for _, req in ipairs(rule.requires) do
        parts[#parts + 1] = string.format('%s|%d',
            tostring(req.name or ('#' .. tostring(req.id or 0))):lower(),
            tonumber(req.points) or 0)
    end
    table.sort(parts)
    return table.concat(parts, '+')
end

local function prereqDBRuleForRank(record, requestedRank)
    if type(record) ~= 'table' then return nil, 'record missing' end
    local rules = record.prerequisiteRules
    if type(rules) ~= 'table' or #rules == 0 then
        return { minRank = 1, maxRank = tonumber(record.maxRank) or 1, requires = {} }
    end

    requestedRank = math.max(1, tonumber(requestedRank) or 1)
    for _, rule in ipairs(rules) do
        local minRank = tonumber(rule.minRank) or 1
        local maxRank = tonumber(rule.maxRank) or minRank
        if requestedRank >= minRank and requestedRank <= maxRank then
            return rule
        end
    end
    return nil, string.format('no prerequisite rule covers requested rank %d', requestedRank)
end

local function lookupPrerequisiteDB(name, tab, aaID, requestedRank)
    if not prereqDB then
        return nil, 'PTAAPrereqData is not loaded: ' .. tostring(prereqDBLoadError or 'unknown error')
    end

    local tabKey = prereqDBTabKey(tab)
    if not tabKey then return nil, 'invalid AA tab ' .. tostring(tab) end
    local tabData = prereqDB.tabs and prereqDB.tabs[tabKey]
    if type(tabData) ~= 'table' or type(tabData.byName) ~= 'table' then
        return nil, 'database tab data missing for ' .. tostring(tabKey)
    end

    local key = tostring(name or ''):lower():gsub('^%s+', ''):gsub('%s+$', ''):gsub('%s+', ' ')
    local candidates = tabData.byName[key]
    if type(candidates) ~= 'table' or #candidates == 0 then
        return nil, string.format('no database record for %s in %s', tostring(name), tostring(tabKey))
    end

    local selected = nil
    local resolution = nil
    aaID = tonumber(aaID) or 0
    if aaID > 0 then
        for _, record in ipairs(candidates) do
            if tonumber(record.id) == aaID then
                selected = record
                resolution = 'id+tab+name'
                break
            end
        end
    end

    if not selected and #candidates == 1 then
        selected = candidates[1]
        resolution = 'unique-name+tab'
    end

    if selected then
        local rule, err = prereqDBRuleForRank(selected, requestedRank)
        if not rule then return nil, err end
        local requires = type(rule.requires) == 'table' and rule.requires or {}
        if #requires > 1 then
            return nil, string.format('database record has %d simultaneous prerequisites; planner supports one', #requires)
        end
        if #requires == 0 then
            return {
                source = 'TriuneDB',
                resolution = resolution,
                dbID = tonumber(selected.id) or 0,
                requestedRank = tonumber(requestedRank) or 1,
                hasPrerequisite = false,
            }
        end
        local req = requires[1]
        if not req.name or tonumber(req.points or 0) <= 0 then
            return nil, 'database prerequisite is unresolved or malformed'
        end
        return {
            source = 'TriuneDB',
            resolution = resolution,
            dbID = tonumber(selected.id) or 0,
            requestedRank = tonumber(requestedRank) or 1,
            hasPrerequisite = true,
            requiredID = tonumber(req.id) or 0,
            requiredName = tostring(req.name),
            requiredRank = tonumber(req.points) or 0,
        }
    end

    -- Multiple same-name records in the same tab are safe only when every
    -- candidate gives the same prerequisite signature for the requested rank.
    local consensusSignature = nil
    local consensusRule = nil
    local candidateIDs = {}
    for _, record in ipairs(candidates) do
        candidateIDs[#candidateIDs + 1] = tostring(record.id or '?')
        local rule, err = prereqDBRuleForRank(record, requestedRank)
        if not rule then return nil, err end
        local signature = prereqDBRuleSignature(rule)
        if consensusSignature == nil then
            consensusSignature = signature
            consensusRule = rule
        elseif signature ~= consensusSignature then
            return nil, string.format(
                'ambiguous database records for %s in %s (IDs %s) disagree at rank %d',
                tostring(name), tostring(tabKey), table.concat(candidateIDs, ','),
                tonumber(requestedRank) or 1)
        end
    end

    local requires = type(consensusRule.requires) == 'table' and consensusRule.requires or {}
    if #requires > 1 then
        return nil, string.format('database consensus has %d simultaneous prerequisites; planner supports one', #requires)
    end
    if #requires == 0 then
        return {
            source = 'TriuneDB',
            resolution = 'same-name-tab-consensus',
            dbID = 0,
            candidateIDs = table.concat(candidateIDs, ','),
            requestedRank = tonumber(requestedRank) or 1,
            hasPrerequisite = false,
        }
    end
    local req = requires[1]
    if not req.name or tonumber(req.points or 0) <= 0 then
        return nil, 'database consensus prerequisite is unresolved or malformed'
    end
    return {
        source = 'TriuneDB',
        resolution = 'same-name-tab-consensus',
        dbID = 0,
        candidateIDs = table.concat(candidateIDs, ','),
        requestedRank = tonumber(requestedRank) or 1,
        hasPrerequisite = true,
        requiredID = tonumber(req.id) or 0,
        requiredName = tostring(req.name),
        requiredRank = tonumber(req.points) or 0,
    }
end

local function runPrereqDBLookup(args)
    args = tostring(args or ''):gsub('^%s+', ''):gsub('%s+$', '')
    local tabText, name = args:match('^(%S+)%s+(.+)$')
    if not tabText or not name then
        print('\ay[AA Planner]\ax Usage: /aaplanner prereqdb <General|Archetype|Class|Special> <AA name>')
        return false
    end

    local tab = TAB_IDS[tabText:sub(1,1):upper() .. tabText:sub(2):lower()]
    if not tab then
        print('\ar[AA Planner Prereq DB]\ax Invalid tab: ' .. tostring(tabText))
        return false
    end

    local cached = getCatalogAA(name, tab)
    local liveID = cached and tonumber(cached.id) or 0
    local currentRank = cached and tonumber(cached.windowRank or cached.rank) or 0
    local maxRank = cached and tonumber(cached.maxRank) or 0
    local requestedRank = currentRank + 1
    if maxRank > 0 and requestedRank > maxRank then requestedRank = maxRank end
    if requestedRank < 1 then requestedRank = 1 end

    local result, err = lookupPrerequisiteDB(name, tab, liveID, requestedRank)
    if not result then
        local line = string.format(
            '[PTAAPlanner] PREREQ DB | AA=%s | Tab=%s | LiveID=%d | Rank=%d | RESULT=FAIL | Reason=%s',
            tostring(name), TAB_NAMES[tab], liveID, requestedRank, tostring(err))
        appendSupportLog(line)
        print('\ar[AA Planner Prereq DB]\ax ' .. line)
        return false
    end

    local prereqText = result.hasPrerequisite
        and string.format('%s rank %d', tostring(result.requiredName), tonumber(result.requiredRank) or 0)
        or 'none'
    local line = string.format(
        '[PTAAPlanner] PREREQ DB | AA=%s | Tab=%s | LiveID=%d | DBID=%d | Rank=%d | Resolution=%s | Prerequisite=%s | CandidateIDs=%s | RESULT=PASS',
        tostring(name), TAB_NAMES[tab], liveID, tonumber(result.dbID) or 0,
        requestedRank, tostring(result.resolution), prereqText,
        tostring(result.candidateIDs or 'n/a'))
    appendSupportLog(line)
    print('\at[AA Planner Prereq DB]\ax ' .. line)
    return true
end


-- Project Triune prerequisite source policy:
--   * PTAAPrereqData.lua, generated from the Triune database, is authoritative
--     for structural prerequisite relationships.
--   * Live character state (Me.AltAbility / fresh AA-window rank) is
--     authoritative for the character's trained prerequisite rank.
--   * Structural lookup failure is UNKNOWN: runtime keeps queue priority and
--     add-time validation rejects rather than guessing.
local function getPrerequisiteStructure(name, tab, requestedRank, occurrence)
    local key = tostring(name or ''):lower()
    if key == '' then return nil, 'AA name is empty' end

    local catalogAA = getCatalogAA(name, tab, occurrence)
    tab = tonumber(tab) or (catalogAA and tonumber(catalogAA.tab)) or 0
    occurrence = math.max(1, tonumber(occurrence) or (catalogAA and tonumber(catalogAA.occurrence)) or 1)
    local duplicateCount = catalogOccurrenceTotal(name, tab)
    local liveID = (duplicateCount <= 1 and catalogAA) and (tonumber(catalogAA.id) or 0) or 0

    local currentRank, maxRank = getAAProgress(catalogAA or name, tab, occurrence)
    currentRank = tonumber(currentRank) or 0
    maxRank = tonumber(maxRank) or 0
    requestedRank = tonumber(requestedRank) or (currentRank + 1)
    if maxRank > 0 and requestedRank > maxRank then requestedRank = maxRank end
    if requestedRank < 1 then requestedRank = 1 end

    if tab <= 0 then
        return nil, 'AA tab could not be resolved for authoritative prerequisite lookup'
    end

    local cacheKey = string.format('%s|%d|%d|%d|%d', key, tab, occurrence, liveID, requestedRank)
    local cached = state.prerequisiteCache[cacheKey]
    if cached and tonumber(cached.generation) == tonumber(state.catalogGeneration) then
        return cached
    end

    local dbResult, dbError = lookupPrerequisiteDB(name, tab, liveID, requestedRank)
    if not dbResult then
        state.prerequisiteCache[cacheKey] = nil
        appendSupportLog(string.format(
            'PREREQ DB STRUCT | AA=%s | Tab=%s | LiveID=%d | Rank=%d | RESULT=UNKNOWN | Reason=%s',
            tostring(name), tostring(TAB_NAMES[tab] or tab), liveID, requestedRank,
            tostring(dbError or 'lookup failed')))
        return nil, 'Triune DB prerequisite lookup failed: ' .. tostring(dbError or 'unknown error')
    end

    local result = {
        generation = state.catalogGeneration,
        requestedRank = requestedRank,
        hasPrerequisite = dbResult.hasPrerequisite == true,
        source = 'TriuneDB',
        resolution = dbResult.resolution,
        dbID = tonumber(dbResult.dbID) or 0,
    }

    if result.hasPrerequisite then
        result.requiredID = tonumber(dbResult.requiredID) or 0
        result.requiredName = dbResult.requiredName
        result.requiredRank = tonumber(dbResult.requiredRank) or 0
    end

    state.prerequisiteCache[cacheKey] = result
    appendSupportLog(string.format(
        'PREREQ DB STRUCT | AA=%s | Tab=%s | LiveID=%d | DBID=%d | Rank=%d | Resolution=%s | Prerequisite=%s | RESULT=PASS',
        tostring(name), tostring(TAB_NAMES[tab] or tab), liveID, tonumber(result.dbID) or 0,
        requestedRank, tostring(result.resolution),
        result.hasPrerequisite
            and string.format('%s rank %d', tostring(result.requiredName), tonumber(result.requiredRank) or 0)
            or 'none'))
    return result
end

local function getCharacterAARank(name, id)
    -- Character ownership/rank MUST NOT come from global AltAbility.Rank.
    -- On Triune that value was observed returning 0 for already-trained AAs.
    --
    -- Prefer Me.AltAbility for trained/current character rank. However,
    -- Triune may return no personal AltAbility object at all for an untrained
    -- AA. In that case, a freshly observed AA-window row is authoritative for
    -- the visible current rank (commonly 0). This lets us distinguish
    -- "known and untrained" from "rank could not be resolved" without ever
    -- falling back to the unreliable global Rank field.
    local personal = mq.TLO.Me.AltAbility(name)
    if personal and personal() then
        local rank = tonumber(safeAAValue(personal, 'Rank', nil))
        if rank ~= nil then return rank, 'Me.AltAbility(name)' end
    end

    if tonumber(id) and tonumber(id) > 0 then
        personal = mq.TLO.Me.AltAbility(tonumber(id))
        if personal and personal() then
            local rank = tonumber(safeAAValue(personal, 'Rank', nil))
            if rank ~= nil then return rank, 'Me.AltAbility(id)' end
        end
    end

    local cached = state.catalogByName[tostring(name or ''):lower()]
    if cached and cached.windowRank ~= nil then
        local rank = tonumber(cached.windowRank)
        if rank ~= nil then
            return rank, 'AAWindow'
        end
    end

    return nil, nil
end

local function getPrerequisiteStatus(name, tab, requestedRank, occurrence)
    local structure, structureError = getPrerequisiteStructure(name, tab, requestedRank, occurrence)
    if not structure then
        return 'unknown', {
            reason = structureError or 'prerequisite structure could not be resolved',
        }
    end

    if not structure.hasPrerequisite then
        return 'none', {
            hasPrerequisite = false,
        }
    end

    local currentRank, rankSource = getCharacterAARank(structure.requiredName, structure.requiredID)
    if currentRank == nil then
        return 'unknown', {
            hasPrerequisite = true,
            requiredID = structure.requiredID,
            requiredName = structure.requiredName,
            requiredRank = structure.requiredRank,
            reason = 'character prerequisite rank could not be resolved',
        }
    end

    local info = {
        hasPrerequisite = true,
        requiredID = structure.requiredID,
        requiredName = structure.requiredName,
        requiredRank = structure.requiredRank,
        currentRank = currentRank,
        rankSource = rankSource,
    }

    if currentRank < structure.requiredRank then
        return 'unmet', info
    end

    return 'met', info
end

local function evaluateQueue()
    state.prerequisiteRuntimeStatus = {}
    local skippedCount = 0

    for _, entry in ipairs(state.plan) do
        local rank, maxRank, cost = getAAProgress(entry)
        local target = getEntryTarget(entry, maxRank)

        if target <= 0 then
            return entry, rank, maxRank, cost,
                'target rank could not be resolved',
                { state = 'candidate', skippedCount = skippedCount }
        end

        if rank < target then
            local skipThisEntry = false

            if state.skipUnmetPrerequisites then
                local prereqState, prereqInfo = getPrerequisiteStatus(entry.name, entry.tab, rank + 1, entry.occurrence)
                state.prerequisiteRuntimeStatus[entryIdentity(entry)] = {
                    state = prereqState,
                    info = prereqInfo,
                }

                -- This is intentionally the ONLY condition that may bypass an
                -- incomplete queue entry. CanTrain=false is ambiguous on
                -- Triune (insufficient points also reports not trainable), so
                -- unknown prerequisite data must retain normal queue priority.
                if prereqState == 'unmet' then
                    skippedCount = skippedCount + 1
                    skipThisEntry = true
                end
            end

            if not skipThisEntry then
                return entry, rank, maxRank, cost, nil,
                    { state = 'candidate', skippedCount = skippedCount }
            end
        end
    end

    if skippedCount > 0 then
        return nil, nil, nil, nil, nil,
            { state = 'all_blocked', skippedCount = skippedCount }
    end

    return nil, nil, nil, nil, nil,
        { state = 'complete', skippedCount = 0 }
end

local function recalculatePlannerStats()
    state.aaPoints = getCurrentAAPoints()
    local total = 0
    local complete = true
    for _, entry in ipairs(state.plan) do
        local cost, resolved = remainingCostForEntry(entry)
        total = total + cost
        if not resolved then complete = false end
    end
    state.queueCost = total
    state.queueCostComplete = complete
end

local function getTopPriorityCost()
    local entry, rank, maxRank, cost, resolveError, queueState = evaluateQueue()
    if entry then
        return math.max(0, tonumber(cost) or 0), entry.name, rank,
            getEntryTarget(entry, maxRank), resolveError, queueState
    end
    return 0, nil, 0, 0, nil, queueState
end

local function pruneCompletedPlan()
    local removed = {}
    for i = #state.plan, 1, -1 do
        if isEntryComplete(state.plan[i]) then
            table.insert(removed, 1, state.plan[i].name)
            table.remove(state.plan, i)
        end
    end
    if #removed > 0 then
        markPlanDirty()
        print(string.format('\at[AA Planner]\ax Removed completed AA%s from priority list: %s',
            #removed == 1 and '' or 's', table.concat(removed, ', ')))
    end
    return #removed
end

local function recordAAFromWindow(name, sourceTab, observedRank, observedCost, observedMax)
    name = trim(name)
    sourceTab = tonumber(sourceTab) or 0
    if name == '' or tonumber(name) then return false end
    if not TAB_NAMES[sourceTab] then return false end

    local baseKey = catalogBaseKey(name, sourceTab)
    local occurrence = (tonumber(state.catalogOccurrenceCounts[baseKey]) or 0) + 1
    state.catalogOccurrenceCounts[baseKey] = occurrence
    local identityKey = catalogKey(name, sourceTab, occurrence)

    -- Catalog membership comes only from a row actually observed in the
    -- character's AA window. MacroQuest AltAbility data is used only to enrich
    -- that observed row with rank/cost/trainability metadata.
    local personal = mq.TLO.Me.AltAbility(name)
    local global = mq.TLO.AltAbility(name)

    local rank = tonumber(safeAAValue(personal, 'Rank', 0)) or 0
    local maxRank = tonumber(safeAAValue(personal, 'MaxRank', 0)) or 0
    if maxRank <= 0 then maxRank = tonumber(safeAAValue(global, 'MaxRank', 0)) or 0 end

    local id = tonumber(safeAAValue(personal, 'ID', 0)) or 0
    if id <= 0 then id = tonumber(safeAAValue(global, 'ID', 0)) or 0 end

    local cost = tonumber(safeAAValue(personal, 'Cost', 0)) or 0
    if cost <= 0 then cost = tonumber(safeAAValue(global, 'Cost', 0)) or 0 end

    local canTrain = safeAAValue(personal, 'CanTrain', false) == true
    if not canTrain then canTrain = safeAAValue(global, 'CanTrain', false) == true end

    -- A list row can contain non-name columns (rank/cost/header text). Require
    -- the row text to resolve to meaningful AA metadata before cataloging it.
    if id <= 0 and maxRank <= 0 and rank <= 0 and cost <= 0 and not canTrain then return false end

    local entry = {
        name = name,
        tab = sourceTab,
        rank = rank,
        cost = cost,
        canTrain = canTrain,
        id = id,
        occurrence = occurrence,
        maxRank = tonumber(observedMax) or maxRank,
        maxed = (tonumber(observedMax) or maxRank) > 0 and (tonumber(observedRank) or rank) >= (tonumber(observedMax) or maxRank),
        windowRank = tonumber(observedRank),
        windowCost = math.max(0, tonumber(observedCost) or 0),
    }
    state.catalog[#state.catalog + 1] = entry
    state.catalogByKey[identityKey] = entry

    -- Keep the first name-only entry for legacy paths that do not yet carry a
    -- tab. Cross-tab duplicates are preserved in catalogByKey and catalog.
    if not state.catalogByName[name:lower()] then
        state.catalogByName[name:lower()] = entry
    end
    return true
end

local function getAAWindow()
    for _, windowName in ipairs({ 'AAWindow', 'AAWnd', 'AltAdvWnd', 'AltAdvWindow', 'AlternateAdvancementWindow' }) do
        local window
        local ok = pcall(function() window = mq.TLO.Window(windowName) end)
        if ok and window and window() then return window, windowName end
    end
    return nil, nil
end

local function getAATabBox(window)
    if not window or not window() then return nil end

    for _, name in ipairs({ 'AAW_Subwindows', 'Subwindows' }) do
        local child
        pcall(function() child = window.Child(name) end)
        if child and child() then return child end
    end

    -- Custom UIs can nest the tab box. ScreenID remains stable across custom
    -- UIs, so walk descendants looking first for the expected identifiers and
    -- then for a TabBox with General/Archetype/Class/Special pages.
    local function walk(node, depth, visited)
        if not node or not node() or depth > 18 or visited.count > 750 then return nil end
        visited.count = visited.count + 1

        local name, screenID, controlType
        pcall(function() name = node.Name() end)
        pcall(function() screenID = node.ScreenID() end)
        pcall(function() controlType = node.Type() end)

        local lowerName = tostring(name or ''):lower()
        local lowerID = tostring(screenID or ''):lower()
        if lowerName == 'aaw_subwindows' or lowerName == 'subwindows' or
           lowerID == 'aaw_subwindows' or lowerID == 'subwindows' then
            return node
        end

        if tostring(controlType or ''):lower() == 'tabbox' then
            local hasExpectedPages = false
            for _, tabName in ipairs({ 'General', 'Archetype', 'Class', 'Special' }) do
                local page
                pcall(function() page = node.Tab(tabName) end)
                if page and page() then
                    hasExpectedPages = true
                    break
                end
            end
            if hasExpectedPages then return node end
        end

        local child
        pcall(function() child = node.FirstChild end)
        while child and child() and visited.count <= 750 do
            local found = walk(child, depth + 1, visited)
            if found then return found end
            local nextChild
            pcall(function() nextChild = child.Next end)
            if not nextChild or not nextChild() then break end
            child = nextChild
        end
        return nil
    end

    return walk(window, 0, { count = 0 })
end

local function getCurrentAATabPage(tabBox)
    if not tabBox or not tabBox() then return nil end

    -- CurrentTab is a window-typed member. Keep the MacroQuest datatype
    -- object itself; calling CurrentTab() evaluates it to its string value
    -- (the Page's ToString), which is no longer usable as a window object.
    local page
    pcall(function() page = tabBox.CurrentTab end)
    if page and page() then return page end
    return nil
end

local function getAATabPageText(page)
    if not page or not page() then return '' end
    local value = ''
    pcall(function() value = trim(page.Text() or '') end)
    if value == 'NULL' then return '' end
    return value
end

local function selectAATabForCatalog(window, windowName, tabBox, tab, expectedName)
    if not tabBox or not tabBox() then return false, 'AA tab control was not found.' end

    -- Prefer selecting by text because it remains meaningful if the client
    -- changes numeric tab ordering. Fall back to the existing /notify path.
    pcall(function()
        if tabBox.SetCurrentTab then tabBox.SetCurrentTab(expectedName) end
    end)

    mq.delay(100)

    local page = getCurrentAATabPage(tabBox)
    local pageText = getAATabPageText(page)
    if pageText:lower() == expectedName:lower() then return true end

    mq.cmdf('/nomodkey /notify %s AAW_Subwindows tabselect %d', windowName, tab)
    mq.cmdf('/nomodkey /notify %s Subwindows tabselect %d', windowName, tab)
    pcall(function()
        if tabBox.SetCurrentTab then tabBox.SetCurrentTab(tab) end
    end)

    mq.delay(150)

    page = getCurrentAATabPage(tabBox)
    pageText = getAATabPageText(page)
    if page and page() and (pageText == '' or pageText:lower() == expectedName:lower()) then
        return true
    end

    return false, string.format('Could not select AA tab %s; active page was "%s".',
        expectedName, pageText ~= '' and pageText or '<unknown>')
end

local function scanAAListControl(control, sourceTab, stats)
    if not control or not control() or not TAB_NAMES[sourceTab] then return 0 end

    local controlType = ''
    pcall(function() controlType = tostring(control.Type() or '') end)
    controlType = controlType:lower()
    if controlType ~= 'listbox' and controlType ~= 'treeview' and controlType ~= 'combobox' then
        return 0
    end

    local count = 0
    pcall(function() count = tonumber(control.Items() or 0) or 0 end)
    if count <= 0 or count > 1000 then return 0 end

    -- Retain compact Special-tab scan details for targeted /aaplanner debug
    -- diagnostics without enabling automatic verbose logging in releases.
    if sourceTab == 4 then
        local controlName, screenID
        pcall(function() controlName = control.Name() end)
        pcall(function() screenID = control.ScreenID() end)
        local detail = {
            name = tostring(controlName or ''),
            screenID = tostring(screenID or ''),
            controlType = tostring(controlType or ''),
            rows = count,
            samples = {},
        }
        for sampleRow = 1, math.min(count, 3) do
            local sampleCells = {}
            for column = 1, 5 do
                local sampleValue
                pcall(function() sampleValue = control.List(sampleRow, column)() end)
                sampleValue = trim(sampleValue)
                if sampleValue ~= '' and sampleValue ~= 'NULL' then
                    sampleCells[#sampleCells + 1] = string.format('C%d=%s', column, sampleValue)
                end
            end
            if #sampleCells == 0 then
                local sampleValue
                pcall(function() sampleValue = control.List(sampleRow)() end)
                sampleValue = trim(sampleValue)
                if sampleValue ~= '' and sampleValue ~= 'NULL' then
                    sampleCells[1] = 'C1=' .. sampleValue
                end
            end
            detail.samples[#detail.samples + 1] = table.concat(sampleCells, ' | ')
        end
        stats.specialControls[#stats.specialControls + 1] = detail
    end

    stats.listControls = stats.listControls + 1
    stats.rows = stats.rows + count
    stats.tabRows[sourceTab] = (stats.tabRows[sourceTab] or 0) + count

    local added = 0
    for row = 1, count do
        local cells = {}
        local foundCell = false

        for column = 1, 5 do
            local value
            pcall(function() value = control.List(row, column)() end)
            value = trim(value)
            cells[column] = value
            if value ~= '' and value ~= 'NULL' then
                stats.cells = stats.cells + 1
                foundCell = true
            end
        end

        if not foundCell then
            local value
            pcall(function() value = control.List(row)() end)
            value = trim(value)
            if value ~= '' and value ~= 'NULL' then
                stats.cells = stats.cells + 1
                cells[1] = value
                foundCell = true
            end
        end

        if foundCell then
            local observedRank
            local observedMax
            if cells[2] and cells[2] ~= '' then
                local currentText, maxText = cells[2]:match('^%s*(%d+)%s*/%s*(%d+)%s*$')
                observedRank = tonumber(currentText)
                observedMax = tonumber(maxText)
            end

            local observedCost = tonumber(cells[3] or '')
            local title = cells[1]

            -- Normal AA rows are Title | Cur/Max | Cost | Category. Feed the
            -- observed rank/cost into the catalog so they are available as a
            -- fallback when the TLO reports Cost=0.
            if title and title ~= '' and title ~= 'NULL' then
                if recordAAFromWindow(title, sourceTab, observedRank, observedCost, observedMax) then
                    added = added + 1
                end
            end
        end
    end

    stats.tabAAs[sourceTab] = (stats.tabAAs[sourceTab] or 0) + added
    return added
end

local function scanAATabPage(page, sourceTab, stats)
    if not page or not page() then return end

    local visited = { count = 0 }
    local scanned = {}

    local function walk(node, depth)
        if not node or not node() or depth > 18 or visited.count > 1000 then return end
        visited.count = visited.count + 1

        local controlType = ''
        pcall(function() controlType = tostring(node.Type() or ''):lower() end)
        if controlType == 'listbox' or controlType == 'treeview' or controlType == 'combobox' then
            local key = tostring(node)
            if not scanned[key] then
                scanned[key] = true
                scanAAListControl(node, sourceTab, stats)
            end
        end

        local child
        pcall(function() child = node.FirstChild end)
        while child and child() and visited.count <= 1000 do
            walk(child, depth + 1)
            local nextChild
            pcall(function() nextChild = child.Next end)
            if not nextChild or not nextChild() then break end
            child = nextChild
        end
    end

    walk(page, 0)
    stats.controls = stats.controls + visited.count
end

local function scanAAWindow()
    local wasOpen = false
    local window, windowName = getAAWindow()
    pcall(function() wasOpen = window and window.Open() == true end)
    if not wasOpen then
        mq.cmd('/windowstate AAWindow open')
        mq.delay(350)
        window, windowName = getAAWindow()
    end

    local stats = {
        window = windowName or 'none',
        listControls = 0,
        rows = 0,
        cells = 0,
        controls = 0,
        tabRows = { [1] = 0, [2] = 0, [3] = 0, [4] = 0 },
        tabAAs = { [1] = 0, [2] = 0, [3] = 0, [4] = 0 },
        specialControls = {},
        tabErrors = {},
    }

    if not window or not window() then
        state.scanStats = stats
        return
    end

    local tabBox = getAATabBox(window)
    if not tabBox or not tabBox() then
        stats.tabErrors[#stats.tabErrors + 1] = 'Could not locate the AA tab control.'
        state.scanStats = stats
        if not wasOpen then mq.cmd('/windowstate AAWindow close') end
        return
    end

    local originalPage = getCurrentAATabPage(tabBox)
    local originalTabName = getAATabPageText(originalPage)

    -- The EQ AA window lazily populates/reuses controls according to the active
    -- page. Select each category before reading its page so the catalog reflects
    -- what the character actually sees in that category.
    for tab = 1, 4 do
        local expectedName = TAB_NAMES[tab]
        local selected, selectErr = selectAATabForCatalog(window, windowName or 'AAWindow',
            tabBox, tab, expectedName)

        if selected then
            -- Reacquire after changing tabs because the client may rebuild page
            -- controls when the selection changes.
            window, windowName = getAAWindow()
            tabBox = getAATabBox(window)
            local page = getCurrentAATabPage(tabBox)
            local pageText = getAATabPageText(page)

            if page and page() and (pageText == '' or pageText:lower() == expectedName:lower()) then
                scanAATabPage(page, tab, stats)
            else
                stats.tabErrors[#stats.tabErrors + 1] = string.format(
                    '%s tab verification failed; active page was "%s".',
                    expectedName, pageText ~= '' and pageText or '<unknown>')
            end
        else
            stats.tabErrors[#stats.tabErrors + 1] = selectErr
        end
    end

    -- Restore the tab the player had open when possible.
    if originalTabName ~= '' then
        pcall(function()
            tabBox = getAATabBox(getAAWindow())
            if tabBox and tabBox.SetCurrentTab then tabBox.SetCurrentTab(originalTabName) end
        end)
    end

    state.scanStats = stats

    if not wasOpen then mq.cmd('/windowstate AAWindow close') end
end

local function refreshCatalog()
    -- Structural prerequisite metadata is cached only for this catalog
    -- generation. A refresh invalidates the cache; nothing is persisted.
    state.catalogGeneration = (tonumber(state.catalogGeneration) or 0) + 1
    state.prerequisiteCache = {}
    state.prerequisiteRuntimeStatus = {}
    state.catalog = {}
    state.catalogByName = {}
    state.catalogByKey = {}
    state.catalogOccurrenceCounts = {}
    setStatus('Scanning the current character\'s AA window...', 'info')
    scanAAWindow()
    table.sort(state.catalog, function(a, b)
        if a.tab ~= b.tab then return a.tab < b.tab end
        return a.name:lower() < b.name:lower()
    end)

    local tabAAs = state.scanStats.tabAAs or {}
    local errorCount = #(state.scanStats.tabErrors or {})
    local message = string.format(
        'Found %d AAs from the AA window: General %d, Archetype %d, Class %d, Special %d.',
        #state.catalog, tonumber(tabAAs[1] or 0), tonumber(tabAAs[2] or 0), tonumber(tabAAs[3] or 0), tonumber(tabAAs[4] or 0))

    if errorCount > 0 then
        message = message .. string.format(' %d tab scan error%s; run /aaplanner debug.',
            errorCount, errorCount == 1 and '' or 's')
    end

    setStatus(message, (#state.catalog > 0 and errorCount == 0) and 'good' or 'warn')
end

local function planContains(aaOrName, tab, occurrence)
    local wanted
    if type(aaOrName) == 'table' then
        wanted = entryIdentity(aaOrName)
    else
        wanted = catalogKey(aaOrName, tab, occurrence)
    end
    for i, entry in ipairs(state.plan) do
        if entryIdentity(entry) == wanted then return i end
    end
    return nil
end

local function planEntryTargetRank(index, requiredName)
    local entry = state.plan[index]
    if not entry or entry.name:lower() ~= tostring(requiredName or ''):lower() then return nil end
    local _, maxRank = getAAProgress(entry)
    return getEntryTarget(entry, maxRank)
end

local function findEarlierPlannedPrerequisite(requiredName, requiredRank, beforeIndex)
    local wanted = tostring(requiredName or ''):lower()
    local limit = math.max(1, tonumber(beforeIndex) or (#state.plan + 1))
    for index = 1, math.min(#state.plan, limit - 1) do
        local entry = state.plan[index]
        if entry and entry.name:lower() == wanted then
            local target = planEntryTargetRank(index, requiredName)
            if target and target >= requiredRank then return index, target end
            return nil, target, index
        end
    end
    return nil, nil, nil
end

local function logAddPrereqDebug(message)
    if not VERBOSE_DEBUG or not appendSupportLog then return end
    appendSupportLog('[PTAAPlanner] ADD PREREQ ' .. tostring(message or ''))
end


local function validateAddPrerequisiteChain(name, beforeIndex, visited, depth, tab, requestedRank, occurrence)
    visited = visited or {}
    depth = tonumber(depth) or 0
    if depth > 32 then return false, 'prerequisite chain is unexpectedly deep' end

    local key = tostring(name or ''):lower()
    if key == '' then return false, 'AA name is empty' end
    if visited[key] then return false, 'prerequisite chain contains a cycle at ' .. tostring(name) end
    visited[key] = true

    local catalogAA = getCatalogAA(name, tab, occurrence)
    tab = tonumber(tab) or (catalogAA and tonumber(catalogAA.tab)) or 0
    occurrence = math.max(1, tonumber(occurrence) or (catalogAA and tonumber(catalogAA.occurrence)) or 1)
    requestedRank = tonumber(requestedRank)
    if not requestedRank or requestedRank <= 0 then
        local _, maxRank = getAAProgress(catalogAA or name, tab, occurrence)
        requestedRank = tonumber(maxRank) or 0
    end

    local structure, structureError = getPrerequisiteStructure(name, tab, requestedRank, occurrence)
    if not structure then
        visited[key] = nil
        logAddPrereqDebug(string.format(
            '%s | Source=TriuneDB | Tab=%s | Rank=%s | Decision=REJECT | Reason=structure unresolved: %s',
            tostring(name), tostring(TAB_NAMES[tab] or tab), tostring(requestedRank),
            tostring(structureError or 'unknown')))
        return false, string.format('Cannot validate prerequisites for %s: %s.',
            tostring(name), tostring(structureError or 'prerequisite data could not be resolved'))
    end

    if not structure.hasPrerequisite then
        visited[key] = nil
        logAddPrereqDebug(string.format(
            '%s | Source=TriuneDB | DBID=%d | Tab=%s | Rank=%d | State=none | Decision=ALLOW',
            tostring(name), tonumber(structure.dbID) or 0, tostring(TAB_NAMES[tab] or tab),
            tonumber(structure.requestedRank) or 0))
        return true
    end

    logAddPrereqDebug(string.format(
        '%s | Source=TriuneDB | DBID=%d | Tab=%s | Rank=%d | Requires=%s %d | Resolution=%s',
        tostring(name), tonumber(structure.dbID) or 0, tostring(TAB_NAMES[tab] or tab),
        tonumber(structure.requestedRank) or 0, tostring(structure.requiredName),
        tonumber(structure.requiredRank) or 0, tostring(structure.resolution or 'unknown')))

    local currentRank, rankSource = getCharacterAARank(structure.requiredName, structure.requiredID)
    if currentRank == nil then
        visited[key] = nil
        logAddPrereqDebug(string.format('%s | Requires=%s %d | Current=unknown | Decision=REJECT | Reason=owned rank unresolved',
            tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0)))
        return false, string.format('Cannot add %s: current rank of prerequisite %s could not be resolved.',
            tostring(name), tostring(structure.requiredName))
    end

    if currentRank >= structure.requiredRank then
        visited[key] = nil
        logAddPrereqDebug(string.format('%s | Requires=%s %d | Current=%d | Source=%s | Decision=ALLOW | Reason=already trained',
            tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
            tonumber(currentRank or 0), tostring(rankSource or 'unknown')))
        return true
    end

    local plannedIndex, plannedTarget, insufficientIndex =
        findEarlierPlannedPrerequisite(structure.requiredName, structure.requiredRank, beforeIndex)
    if not plannedIndex then
        visited[key] = nil
        if insufficientIndex then
            logAddPrereqDebug(string.format('%s | Requires=%s %d | Current=%d | PlannedIndex=%d | PlannedTarget=%s | Decision=REJECT | Reason=planned target too low',
                tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
                tonumber(currentRank or 0), tonumber(insufficientIndex), tostring(plannedTarget)))
            return false, string.format('Cannot add %s: prerequisite %s requires rank %d, but its earlier queue entry only targets rank %s.',
                tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
                tostring(plannedTarget or '?'))
        end
        logAddPrereqDebug(string.format('%s | Requires=%s %d | Current=%d | Decision=REJECT | Reason=missing earlier queue prerequisite',
            tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
            tonumber(currentRank or 0)))
        return false, string.format('Cannot add %s: requires %s rank %d. Train it first or place it earlier in the priority list.',
            tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0))
    end

    local plannedEntry = state.plan[plannedIndex]
    local prereqTab = plannedEntry and tonumber(plannedEntry.tab) or nil
    logAddPrereqDebug(string.format('%s | Requires=%s %d | Current=%d | PlannedIndex=%d | PlannedTarget=%d | Decision=CHECK_CHAIN',
        tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
        tonumber(currentRank or 0), tonumber(plannedIndex), tonumber(plannedTarget or 0)))

    local ok, reason = validateAddPrerequisiteChain(
        structure.requiredName, plannedIndex, visited, depth + 1, prereqTab, structure.requiredRank, plannedEntry and plannedEntry.occurrence or 1)
    visited[key] = nil
    if not ok then return false, reason end

    logAddPrereqDebug(string.format('%s | Requires=%s %d | PlannedIndex=%d | PlannedTarget=%d | Decision=ALLOW | Reason=earlier queue chain valid',
        tostring(name), tostring(structure.requiredName), tonumber(structure.requiredRank or 0),
        tonumber(plannedIndex), tonumber(plannedTarget or 0)))
    return true
end

local function performAddToPlan(aa)
    if planContains(aa) then
        setStatus(aa.name .. ' is already in the priority list.', 'warn')
        return
    end

    -- Add-time prerequisite validation never rewrites the user's queue. It only
    -- uses the authoritative Triune database to verify that an unmet explicit
    -- prerequisite is already scheduled earlier
    -- at a sufficient target rank. Unknown prerequisite data fails closed here
    -- rather than silently making a progression decision for the user.
    local valid, prerequisiteError = validateAddPrerequisiteChain(aa.name, #state.plan + 1, {}, 0, aa.tab, aa.maxRank, aa.occurrence)
    if not valid then
        setStatus(prerequisiteError or ('Cannot add ' .. aa.name .. ': prerequisite validation failed.'), 'warn')
        return
    end

    local target = aa.maxRank > 0 and tostring(aa.maxRank) or 'M'
    state.plan[#state.plan + 1] = { name = aa.name, rank = target, tab = aa.tab, occurrence = math.max(1, tonumber(aa.occurrence) or 1) }
    logAddPrereqDebug(string.format('%s | Decision=ADDED | QueueIndex=%d | Target=%s', tostring(aa.name), #state.plan, tostring(target)))
    markPlanDirty()
end

local function queueAddToPlan(aa)
    if not aa or not aa.name then
        setStatus('Cannot queue add: AA data is missing.', 'error')
        return
    end

    if planContains(aa) then
        setStatus(aa.name .. ' is already in the priority list.', 'warn')
        return
    end

    if state.pendingAddValidation then
        setStatus('Another AA add is already being validated.', 'warn')
        return
    end

    -- Keep the ImGui callback non-blocking. The top-level loop performs
    -- prerequisite validation and the actual add.
    state.pendingAddValidation = {
        name = aa.name,
        maxRank = tonumber(aa.maxRank or 0) or 0,
        tab = tonumber(aa.tab or 0) or 0,
        occurrence = math.max(1, tonumber(aa.occurrence) or 1),
    }
    setStatus('Validating prerequisites for ' .. aa.name .. '...', 'info')
end

local function movePlan(index, delta)
    local target = index + delta
    if target < 1 or target > #state.plan then return end
    state.plan[index], state.plan[target] = state.plan[target], state.plan[index]
    markPlanDirty()
end

local function encodeField(value)
    return tostring(value or ''):gsub('%%', '%%25'):gsub('|', '%%7C'):gsub('\r', ''):gsub('\n', '%%0A')
end

local function decodeField(value)
    return tostring(value or ''):gsub('%%0[Aa]', '\n'):gsub('%%7[Cc]', '|'):gsub('%%25', '%%')
end

local function exportPlannerList()
    local lines = { 'AAPLANNER2' }
    for _, entry in ipairs(state.plan) do
        lines[#lines + 1] = table.concat({ encodeField(entry.name), entry.rank, TAB_NAMES[entry.tab] or '', tostring(math.max(1, tonumber(entry.occurrence) or 1)) }, '|')
    end
    return table.concat(lines, '\n')
end

local function validateRank(rank)
    rank = trim(rank):upper()
    if rank == 'M' then return 'M' end
    local number = tonumber(rank)
    if not number or number < 1 or number ~= math.floor(number) then return nil end
    return tostring(number)
end

local function parseImport(text)
    text = tostring(text or ''):gsub('\r', '')
    local imported = {}
    local seen = {}
    local plannerV2 = text:match('^%s*AAPLANNER2%s*\n') ~= nil
    local plannerV1 = text:match('^%s*AAPLANNER1%s*\n') ~= nil
    local lineNumber = 0
    for line in text:gmatch('[^\n]+') do
        lineNumber = lineNumber + 1
        line = trim(line)
        if line ~= '' and line ~= 'AAPLANNER1' and line ~= 'AAPLANNER2'
            and not line:match('^%[.-%]$') and not line:match('^[;#]') then
            local name, rank, tabName, occurrence
            if plannerV2 then
                name, rank, tabName, occurrence = line:match('^(.-)|([^|]+)|([^|]*)|([^|]+)$')
                if name then name = decodeField(name) end
            elseif plannerV1 then
                name, rank, tabName = line:match('^(.-)|([^|]+)|([^|]*)$')
                if name then name = decodeField(name) end
                occurrence = 1
            else
                name, rank = line:match('^%d+%s*=%s*(.-)|([^|]+)$')
                if not name then name, rank = line:match('^(.-)|([^|]+)$') end
                occurrence = 1
            end
            name = trim(name)
            rank = validateRank(rank)
            occurrence = math.max(1, tonumber(occurrence) or 1)
            if not name or name == '' or not rank then
                return nil, string.format('Invalid entry on import line %d.', lineNumber)
            end
            local nameKey = name:lower()
            local catalogAA = state.catalogByName[nameKey]
            local tab = TAB_IDS[trim(tabName)] or (catalogAA and catalogAA.tab) or 0
            local key = catalogKey(name, tab, occurrence)
            if seen[key] then return nil, 'Duplicate AA occurrence in import: ' .. name end
            seen[key] = true
            imported[#imported + 1] = { name = name, rank = rank, tab = tab, occurrence = occurrence }
        end
    end
    if #imported == 0 then return nil, 'No AA entries were found in the pasted text.' end
    return imported
end

local function pathJoin(base, leaf)
    local sep = base:find('\\', 1, true) and '\\' or '/'
    if base:sub(-1) == '/' or base:sub(-1) == '\\' then return base .. leaf end
    return base .. sep .. leaf
end

local function getDebugLogPath()
    local character = trim(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '')
    local server = ''
    pcall(function() server = trim(mq.TLO.MacroQuest.Server() or '') end)
    if server == '' then pcall(function() server = trim(mq.parse('${MacroQuest.Server}')) end) end
    if character == '' or server == '' or server == 'NULL' then return nil end
    return pathJoin(configDir, string.format('PTAAPlanner_%s_%s_debug.log', server, character))
end

appendSupportLog = function(line)
    local path = getDebugLogPath()
    if not path then return false end

    local file = io.open(path, 'ab')
    if not file then return false end

    file:write(string.format('[%s] %s\r\n', os.date('%Y-%m-%d %H:%M:%S'), tostring(line)))
    file:close()
    return true
end



local function writePrioritySnapshot(reason, force)
    if not VERBOSE_DEBUG and force ~= true then return false end
    recalculatePlannerStats()

    appendSupportLog(string.format(
        '[PTAAPlanner] Priority snapshot (%s) Version=%s Entries=%d AAPoints=%d QueueCost=%d QueueCostComplete=%s AutoSpend=%s',
        tostring(reason or 'update'), VERSION, #state.plan, tonumber(state.aaPoints or 0),
        tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
        tostring(state.autoSpendEnabled)))

    local prereqCacheCount = 0
    for _ in pairs(state.prerequisiteCache or {}) do
        prereqCacheCount = prereqCacheCount + 1
    end
    appendSupportLog(string.format(
        '[PTAAPlanner] PREREQ DEBUG | SkipEnabled=%s CatalogGeneration=%d CacheEntries=%d',
        tostring(state.skipUnmetPrerequisites == true),
        tonumber(state.catalogGeneration or 0),
        prereqCacheCount))

    if force == true then
        local scanStats = state.scanStats or {}
        local tabRows = scanStats.tabRows or {}
        local tabAAs = scanStats.tabAAs or {}
        appendSupportLog(string.format(
            '[PTAAPlanner] SPECIAL DEBUG | Rows=%d AAs=%d Controls=%d',
            tonumber(tabRows[4] or 0), tonumber(tabAAs[4] or 0), #(scanStats.specialControls or {})))
        for i, detail in ipairs(scanStats.specialControls or {}) do
            appendSupportLog(string.format(
                '[PTAAPlanner] SPECIAL CONTROL #%d | Name=%s | ScreenID=%s | Type=%s | Rows=%d',
                i, tostring(detail.name or ''), tostring(detail.screenID or ''),
                tostring(detail.controlType or ''), tonumber(detail.rows or 0)))
            for row, sample in ipairs(detail.samples or {}) do
                appendSupportLog(string.format(
                    '[PTAAPlanner] SPECIAL SAMPLE #%d.%d | %s', i, row, tostring(sample or '')))
            end
        end
    end

    -- Run the same queue evaluator used by the spender/UI so the debug log
    -- shows exactly which entries are being skipped and which AA is the
    -- effective next purchase candidate.
    local candidate, candidateRank, candidateMaxRank, candidateCost, candidateError, queueState = evaluateQueue()

    for i, entry in ipairs(state.plan) do
        local runtime = state.prerequisiteRuntimeStatus[entryIdentity(entry)]
        if runtime then
            local info = runtime.info or {}
            appendSupportLog(string.format(
                '[PTAAPlanner] PREREQ #%d %s #%d [%s] | State=%s | Requires=%s | RequiredRank=%s | CurrentRank=%s | Action=%s%s',
                i,
                tostring(entry.name),
                math.max(1, tonumber(entry.occurrence) or 1),
                tostring(TAB_NAMES[entry.tab] or entry.tab or 'Unknown'),
                tostring(runtime.state or 'unknown'),
                tostring(info.requiredName or 'none'),
                tostring(info.requiredRank or 0),
                tostring(info.currentRank ~= nil and info.currentRank or 'n/a'),
                runtime.state == 'unmet' and 'SKIP' or 'KEEP',
                info.reason and (' | Reason=' .. tostring(info.reason)) or ''))
        end
    end

    if candidate then
        appendSupportLog(string.format(
            '[PTAAPlanner] QUEUE CANDIDATE %s | Rank=%d/%d | Target=%d | Cost=%d | SkippedBefore=%d%s',
            tostring(candidate.name),
            tonumber(candidateRank or 0),
            tonumber(candidateMaxRank or 0),
            tonumber(getEntryTarget(candidate, candidateMaxRank) or 0),
            tonumber(candidateCost or 0),
            tonumber(queueState and queueState.skippedCount or 0),
            candidateError and (' | Error=' .. tostring(candidateError)) or ''))
    else
        appendSupportLog(string.format(
            '[PTAAPlanner] QUEUE RESULT %s | Skipped=%d',
            tostring(queueState and queueState.state or 'unknown'),
            tonumber(queueState and queueState.skippedCount or 0)))
    end

    if #state.plan == 0 then
        appendSupportLog('[PTAAPlanner] Priority list is empty.')
        return
    end

    for i, entry in ipairs(state.plan) do
        local currentRank, maxRank, nextCost, costSource = getAAProgress(entry)
        local target = getEntryTarget(entry, maxRank)
        local remainingCost, resolved = remainingCostForEntry(entry)
        local cached = getCatalogAA(entry.name, entry.tab, entry.occurrence)
        appendSupportLog(string.format(
            '[PTAAPlanner] #%d %s #%d [%s] | Target=%s | Current=%d/%d | NextCost=%d | CostSource=%s | RemainingCost=%d | CostResolved=%s',
            i, tostring(entry.name), math.max(1, tonumber(entry.occurrence) or 1),
            tostring(TAB_NAMES[entry.tab] or entry.tab or 'Unknown'),
            tostring(entry.rank), tonumber(currentRank or 0),
            tonumber(maxRank or 0), tonumber(nextCost or 0), tostring(costSource or 'Unresolved'),
            tonumber(remainingCost or 0), tostring(resolved)))

        if not resolved then
            appendSupportLog(string.format(
                '[PTAAPlanner] COST DEBUG %s | Group=%d | WindowRank=%s | WindowCost=%s | Future rank costs unavailable until each preceding rank is purchased',
                tostring(entry.name),
                tonumber(safeAAValue(mq.TLO.AltAbility(entry.name), 'GroupID', 0)) or 0,
                cached and tostring(cached.windowRank) or 'nil',
                cached and tostring(cached.windowCost) or 'nil'))
        end
    end
    return true
end

local function normalizeAAName(value)
    return trim(value):lower():gsub('[^%a%d]', '')
end

local function findChildRecursive(parent, targetName, depth)
    if not parent or not parent() or not targetName or targetName == '' then return nil end
    depth = depth or 0
    if depth > 16 then return nil end
    local direct
    pcall(function() direct = parent.Child(targetName) end)
    if direct and direct() then return direct end

    local child
    pcall(function() child = parent.FirstChild end)
    local count = 0
    while child and child() and count < 150 do
        count = count + 1
        local name, screenID
        pcall(function() name = child.Name() end)
        pcall(function() screenID = child.ScreenID() end)
        if (name and name:lower() == targetName:lower()) or
            (screenID and screenID:lower() == targetName:lower()) then
            return child
        end
        local nested = findChildRecursive(child, targetName, depth + 1)
        if nested then return nested end
        local nextChild
        pcall(function() nextChild = child.Next end)
        child = nextChild
    end
    return nil
end

local function isAAWindowOpen()
    local window = getAAWindow()
    local result = false
    pcall(function() result = window and window.Open() == true end)
    return result
end

local function openAAWindow(attempt)
    if isAAWindowOpen() then return true end
    attempt = attempt or 1
    local window, windowName = getAAWindow()
    windowName = windowName or 'AAWindow'
    if attempt == 1 then
        pcall(function() if window and window.DoOpen then window.DoOpen() end end)
        mq.cmdf('/windowstate %s open', windowName)
        mq.cmd('/windowstate AAWindow open')
        mq.cmd('/windowstate AAWnd open')
    elseif attempt == 2 then
        mq.cmd('/nomodkey /keypress TOGGLE_ALTADVWIN')
    elseif attempt == 3 then
        mq.cmd('/nomodkey /keypress v alt')
    else
        mq.cmd('/nomodkey /keypress a alt')
    end
    return isAAWindowOpen()
end

local function closeAAWindow()
    if not isAAWindowOpen() then return end
    local window, windowName = getAAWindow()
    windowName = windowName or 'AAWindow'
    pcall(function() if window and window.DoClose then window.DoClose() end end)
    mq.cmdf('/nomodkey /notify %s AAW_DoneButton leftmouseup', windowName)
    mq.cmdf('/nomodkey /notify %s DoneButton leftmouseup', windowName)
    mq.cmdf('/windowstate %s close', windowName)
    mq.cmd('/windowstate AAWindow close')
    mq.cmd('/windowstate AAWnd close')
end

local AA_LIST_CONTROLS = {
    [1] = { 'AAW_GeneralList', 'AA_GeneralList', 'GeneralList', 'List1', 'AAW_List', 'AA_List' },
    [2] = { 'AAW_ArchList', 'AAW_ArchetypeList', 'AA_ArchList', 'AA_ArchetypeList', 'ArchList', 'ArchetypeList', 'List2' },
    [3] = { 'AAW_ClassList', 'AA_ClassList', 'ClassList', 'List3' },
    -- Live-verified on Project Triune: Special uses AAW_SpecialList / ScreenID List4.
    [4] = { 'AAW_SpecialList', 'AA_SpecialList', 'SpecialList', 'List4' },
}

local function selectAATab(tab)
    local window, windowName = getAAWindow()
    windowName = windowName or 'AAWindow'
    mq.cmdf('/nomodkey /notify %s AAW_Subwindows tabselect %d', windowName, tab)
    mq.cmdf('/nomodkey /notify %s Subwindows tabselect %d', windowName, tab)
    pcall(function()
        local sub = window and (window.Child('AAW_Subwindows') or window.Child('Subwindows'))
        if not sub and window then sub = findChildRecursive(window, 'AAW_Subwindows') end
        if sub and sub.SetCurrentTab then sub.SetCurrentTab(tab) end
    end)
end

local function findAAWindowRow(targetName, preferredTab, occurrence)
    local window = getAAWindow()
    if not window then return nil end
    local wanted = normalizeAAName(targetName)
    occurrence = math.max(1, tonumber(occurrence) or 1)

    local tabs = {}
    if tonumber(preferredTab) and tonumber(preferredTab) >= 1 and tonumber(preferredTab) <= 4 then
        tabs[1] = tonumber(preferredTab)
    else
        for tab = 1, 4 do tabs[#tabs + 1] = tab end
    end

    for _, tab in ipairs(tabs) do
        local matchIndex = 0
        for _, controlName in ipairs(AA_LIST_CONTROLS[tab] or {}) do
            local control
            pcall(function() control = window.Child(controlName) end)
            if not control or not control() then control = findChildRecursive(window, controlName) end
            if control and control() then
                local rows = 0
                pcall(function() rows = tonumber(control.Items() or 0) or 0 end)
                for row = 1, math.min(rows, 1000) do
                    local value
                    pcall(function() value = control.List(row, 1)() end)
                    if not value or value == '' or value == 'NULL' then
                        pcall(function() value = control.List(row)() end)
                    end
                    if value and normalizeAAName(value) == wanted then
                        matchIndex = matchIndex + 1
                        if matchIndex == occurrence then
                            return controlName, row, tab, control
                        end
                    end
                end
            end
        end
    end
    return nil
end

local function readAAWindowRowData(control, row)
    if not control or not control() or not row then return nil end

    local title, rankText, costText
    pcall(function() title = trim(control.List(row, 1)()) end)
    pcall(function() rankText = trim(control.List(row, 2)()) end)
    pcall(function() costText = trim(control.List(row, 3)()) end)

    if not title or title == '' or title == 'NULL' then
        pcall(function() title = trim(control.List(row)()) end)
    end

    local currentRank, maxRank
    if rankText and rankText ~= '' then
        local currentText, maxText = rankText:match('^%s*(%d+)%s*/%s*(%d+)%s*$')
        currentRank = tonumber(currentText)
        maxRank = tonumber(maxText)
    end

    return {
        title = title,
        currentRank = currentRank,
        maxRank = maxRank,
        cost = tonumber(costText or '') or 0,
    }
end

local function purchaseSnapshotStillCurrent(task)
    if not task or task.kind ~= 'aa' then return true end

    if (tonumber(state.planGeneration) or 0) ~= (tonumber(task.planGeneration) or -1) then
        return false, 'queue generation changed'
    end

    -- IMPORTANT: with prerequisite skipping enabled, the effective purchase
    -- candidate may not be state.plan[1]. Re-evaluate the queue using the
    -- same logic as the UI/spender and compare against that effective
    -- candidate instead of the literal first list entry.
    local effectiveEntry, effectiveRank, effectiveMaxRank, _, effectiveError, queueState = evaluateQueue()
    if not effectiveEntry then
        local queueStateName = queueState and queueState.state or 'unknown'
        return false, 'effective priority candidate unavailable (' .. tostring(queueStateName) .. ')'
    end

    if entryIdentity(effectiveEntry) ~= catalogKey(task.name, task.tab, task.occurrence) then
        return false, string.format(
            'effective priority candidate changed (%s[%d] -> %s[%d])',
            tostring(task.name), tonumber(task.occurrence) or 1,
            tostring(effectiveEntry.name), tonumber(effectiveEntry.occurrence) or 1)
    end

    if tostring(effectiveEntry.rank or '') ~= tostring(task.targetSpec or '') then
        return false, 'target rank changed'
    end

    if effectiveError then
        return false, 'effective priority candidate unresolved: ' .. tostring(effectiveError)
    end

    return true
end

local function abortPurchaseForQueueChange(task, reason, now)
    if task and task.openedByUs then closeAAWindow() end
    local effectiveEntry, effectiveRank, effectiveMaxRank, effectiveCost, effectiveError, queueState = evaluateQueue()
    appendSupportLog(string.format(
        '[PTAAPlanner] PURCHASE ABORTED %s | reason=%s | startGeneration=%s currentGeneration=%s | effectiveCandidate=%s | effectiveRank=%s/%s | effectiveCost=%s | queueState=%s%s',
        task and tostring(task.name) or '<unknown>', tostring(reason or 'queue changed'),
        task and tostring(task.planGeneration) or 'nil', tostring(state.planGeneration),
        effectiveEntry and tostring(effectiveEntry.name) or 'none',
        effectiveRank ~= nil and tostring(effectiveRank) or 'n/a',
        effectiveMaxRank ~= nil and tostring(effectiveMaxRank) or 'n/a',
        effectiveCost ~= nil and tostring(effectiveCost) or 'n/a',
        queueState and tostring(queueState.state) or 'unknown',
        effectiveError and (' | effectiveError=' .. tostring(effectiveError)) or ''))
    state.pendingPurchase = nil
    state.manualSpendQueued = false
    state.nextSpendAt = (now or monotonicSeconds()) + 0.10
    setStatus('Purchase attempt cancelled because the priority list changed. The next pass will use the updated queue.', 'info', 4)
end

local function getSelectedListRow(control)
    if not control or not control() then return nil end
    for _, member in ipairs({ 'CurSel', 'CurrentSelection', 'SelectedIndex' }) do
        local selected
        pcall(function()
            if control[member] then selected = tonumber(control[member]()) end
        end)
        if selected and selected > 0 then return selected end
    end
    return nil
end

local function getConfirmationDialog()
    for _, windowName in ipairs({ 'ConfirmationDialogBox', 'ConfirmationDialog' }) do
        local dialog
        local isOpen = false
        pcall(function()
            dialog = mq.TLO.Window(windowName)
            isOpen = dialog and dialog() and dialog.Open() == true
        end)
        if isOpen then return dialog, windowName end
    end
    return nil
end

local function getConfirmationText(dialog)
    if not dialog or not dialog() then return '' end
    for _, controlName in ipairs({ 'CD_TextOutput', 'TextOutput', 'CD_Text', 'DisplayText' }) do
        local control
        local value
        pcall(function() control = dialog.Child(controlName) end)
        if not control or not control() then control = findChildRecursive(dialog, controlName) end
        pcall(function() if control and control() then value = control.Text() end end)
        value = trim(value)
        if value ~= '' and value ~= 'NULL' then return value end
    end
    local value
    pcall(function() value = dialog.Text() end)
    value = trim(value)
    return value ~= 'NULL' and value or ''
end

local function playerBusyReason()
    local active = false
    if state.safetyCheckCasting then
        pcall(function()
            local casting = mq.TLO.Me.Casting()
            active = casting ~= nil and casting ~= false and tostring(casting) ~= '' and tostring(casting) ~= 'NULL'
        end)
        if active then return 'casting' end
    end
    if state.safetyCheckMoving then
        active = false
        pcall(function() active = mq.TLO.Me.Moving() == true end)
        if active then return 'moving' end
    end
    if state.safetyCheckNavigating then
        active = false
        pcall(function() active = mq.TLO.Navigation.Active() == true end)
        if active then return 'navigating' end
    end
    if state.safetyCheckCombat then
        active = false
        pcall(function() active = mq.TLO.Me.Combat() == true end)
        if active then return 'in combat' end
        local combatState = ''
        pcall(function() combatState = tostring(mq.TLO.Me.CombatState() or '') end)
        if combatState == 'COMBAT' then return 'in combat' end
    end
    if state.safetyCheckAutofire then
        active = false
        pcall(function() active = mq.TLO.Me.AutoFire() == true end)
        if active then return 'using autofire' end
    end
    if state.safetyCheckXTargets then
        local haters = 0
        pcall(function() haters = tonumber(mq.TLO.Me.XTHaterCount() or 0) or 0 end)
        if haters > 0 then return 'with live XTargets' end
    end
    return nil
end

local function aaCanTrain(name)
    local personal = mq.TLO.Me.AltAbility(name)
    local global = mq.TLO.AltAbility(name)
    local canTrain = safeAAValue(personal, 'CanTrain', nil)
    if canTrain == nil then canTrain = safeAAValue(global, 'CanTrain', nil) end
    return canTrain == true
end

local function nextIncompleteEntry()
    -- Both the spender and the UI use evaluateQueue(), so "Next Purchase"
    -- always matches the AA the native spender will actually consider.
    return evaluateQueue()
end


local function stopAutoSpend(message, kind)
    state.autoSpendEnabled = false
    state.autoManageActive = false
    state.pendingPurchase = nil
    state.manualSpendQueued = false
    if message then setStatus(message, kind or 'error') end
end

local function startNativePurchase(entry, rank, cost, manual)
    state.pendingPurchase = {
        kind = 'aa', name = entry.name, tab = tonumber(entry.tab) or 1, occurrence = math.max(1, tonumber(entry.occurrence) or 1),
        rankBefore = tonumber(rank) or 0, pointsBefore = getCurrentAAPoints(),
        cost = tonumber(cost) or 0, step = 'open', retries = 0,
        openedByUs = false, manual = manual == true,
        planGeneration = tonumber(state.planGeneration) or 0,
        targetSpec = tostring(entry.rank or ''),
        startedAt = monotonicSeconds(), nextStepAt = monotonicSeconds(),
    }
    setStatus(string.format('Purchasing %s rank %d for %d AA...', entry.name, rank + 1, cost), 'info')
end

local function requestSpendPass(manual)
    if state.pendingPurchase then return false end

    local busy = playerBusyReason()
    if busy then
        if manual then
            state.manualSpendQueued = true
            setStatus('Spend Next is queued while ' .. busy .. '. It will retry automatically when safe.', 'warn')
        end
        return false
    end
    if manual then state.manualSpendQueued = false end

    pruneCompletedPlan()
    recalculatePlannerStats()
    local entry, rank, maxRank, cost, resolveError, queueState = nextIncompleteEntry()
    if entry then
        if resolveError then
            if manual then setStatus(string.format('Cannot purchase %s: %s. Refresh the AA catalog and verify its target rank.', entry.name, resolveError), 'error') end
            return false
        end
        cost = math.floor(tonumber(cost) or 0)
        if cost <= 0 then
            if manual then setStatus('Cannot purchase ' .. entry.name .. ': its next-rank cost is unresolved. Refresh the AA catalog.', 'error') end
            state.nextSpendAt = monotonicSeconds() + 5
            return false
        end
        if state.aaPoints < cost then
            if manual then
                setStatus(string.format('Not enough AA points for %s rank %d: have %d, need %d.',
                    entry.name, rank + 1, state.aaPoints, cost), 'warn')
            end
            return false
        end
        if not aaCanTrain(entry.name) then
            appendSupportLog(string.format(
                '[PTAAPlanner] PRECHECK %s rank %d | CanTrain=false | AAPoints=%d | CachedCost=%d | proceeding to AA-window verification',
                entry.name, rank + 1, state.aaPoints, cost))
        end
        startNativePurchase(entry, rank, cost, manual)
        return true
    end

    -- A queue containing only temporarily skipped entries is NOT complete.
    -- Keep waiting for those prerequisites instead of treating the queue as done.
    if queueState and queueState.state == 'all_blocked' then
        if manual then
            setStatus(string.format(
                'No queued AA can be purchased yet: %d entr%s currently blocked by unmet prerequisites.',
                tonumber(queueState.skippedCount or 0),
                tonumber(queueState.skippedCount or 0) == 1 and 'y is' or 'ies are'), 'warn')
        end
        return false
    end

    if manual then
        setStatus('The priority list is complete.', 'info')
    end
    return false
end

local function finishPurchaseSuccess(task, rankAfter, pointsAfter)
    setStatus(string.format('Purchased %s rank %d. %d AA points remain.', task.name, rankAfter, pointsAfter), 'good', 6)
    appendSupportLog(string.format('[PTAAPlanner] PURCHASED %s rank %d; points %d -> %d',
        task.name, rankAfter, task.pointsBefore, pointsAfter))
    pruneCompletedPlan()
    state.pendingPurchase = nil
    state.nextSpendAt = monotonicSeconds() + 0.75
    recalculatePlannerStats()
end

local function refreshTaskOccurrenceFromWindow(task)
    if not task or not task.name then return nil, 'task unavailable' end
    local controlName, row, foundTab, control =
        findAAWindowRow(task.name, task.tab, task.occurrence)
    if not controlName or foundTab ~= task.tab then
        return nil, 'AA row not found'
    end

    local rowData = readAAWindowRowData(control, row)
    if not rowData or normalizeAAName(rowData.title) ~= normalizeAAName(task.name) then
        return nil, 'AA row data unavailable or title mismatch'
    end

    local cached = getCatalogAA(task.name, task.tab, task.occurrence)
    if cached then
        local oldRank = cached.windowRank
        local oldCost = cached.windowCost
        local oldMaxRank = cached.maxRank
        cached.windowRank = rowData.currentRank
        cached.windowCost = math.max(0, tonumber(rowData.cost) or 0)
        if rowData.maxRank and rowData.maxRank > 0 then
            cached.maxRank = rowData.maxRank
        end
        appendSupportLog(string.format(
            '[PTAAPlanner] PURCHASE CACHE REFRESH %s #%d [%s] | Rank=%s->%s | Cost=%s->%s | MaxRank=%s->%s',
            task.name, tonumber(task.occurrence) or 1,
            tostring(TAB_NAMES[task.tab] or task.tab or 'Unknown'),
            tostring(oldRank), tostring(cached.windowRank),
            tostring(oldCost), tostring(cached.windowCost),
            tostring(oldMaxRank), tostring(cached.maxRank)))
    end

    return rowData, nil
end

local function purchaseIsCommitted(task)
    if not task or task.kind ~= 'aa' then return false end
    return task.step == 'wait_confirmation' or task.step == 'verify'
end

local function processNativePurchase()
    local task = state.pendingPurchase
    if not task then return end
    local now = monotonicSeconds()
    if now < (task.nextStepAt or 0) then return end

    -- Busy-state safety can cancel/retry only before the Train click.
    -- Once committed, the remaining states are observation-only and must
    -- survive combat/casting/navigation changes until success/timeout resolves.
    if not purchaseIsCommitted(task) then
        local busy = playerBusyReason()
        if busy then
            if task.openedByUs then closeAAWindow() end
            if task.manual then state.manualSpendQueued = true end
            state.pendingPurchase = nil
            state.nextSpendAt = now + 2
            return
        end
    end


    -- Queue edits may invalidate any pre-commit step. After Train is clicked,
    -- finish observing the committed purchase first; the updated queue applies
    -- to the next spend pass.
    if not purchaseIsCommitted(task) then
        local snapshotOK, snapshotReason = purchaseSnapshotStillCurrent(task)
        if not snapshotOK then
            abortPurchaseForQueueChange(task, snapshotReason, now)
            return
        end
    end

    if task.step == 'open' then
        if isAAWindowOpen() then
            task.step = 'select_tab'
            task.nextStepAt = now + 0.1
        else
            task.openedByUs = true
            task.retries = task.retries + 1
            openAAWindow(task.retries)
            task.step = 'wait_open'
            task.nextStepAt = now + 0.4
        end
    elseif task.step == 'wait_open' then
        if isAAWindowOpen() then
            task.step = 'select_tab'
            task.nextStepAt = now + 0.1
        elseif task.retries < 4 then
            task.retries = task.retries + 1
            openAAWindow(task.retries)
            task.nextStepAt = now + 0.4
        else
            stopAutoSpend('Could not open the Alternate Advancement window. Auto Spend has been disabled.', 'error')
        end
    elseif task.step == 'select_tab' then
        selectAATab(task.tab)
        task.step = 'select_row'
        task.nextStepAt = now + 0.3
    elseif task.step == 'select_row' then
        local controlName, row, foundTab, control = findAAWindowRow(task.name, task.tab, task.occurrence)
        if not controlName then
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend('Could not locate ' .. task.name .. ' in the AA window. Refresh the catalog and try again.', 'error')
            return
        end
        if foundTab ~= task.tab then
            task.tab = foundTab
            selectAATab(foundTab)
            task.step = 'select_row'
            task.nextStepAt = now + 0.3
            return
        end
        local _, windowName = getAAWindow()
        windowName = windowName or 'AAWindow'
        local notifyName = controlName
        pcall(function()
            local screenID = control.ScreenID()
            if screenID and screenID ~= '' and screenID ~= 'NULL' then notifyName = screenID end
        end)
        pcall(function() if control.Select then control.Select(row) end end)
        mq.cmdf('/nomodkey /notify %s %s listselect %d', windowName, notifyName, row)
        task.selectedControlName = notifyName
        task.selectedRow = row
        task.step = 'verify_row'
        task.nextStepAt = now + 0.25
    elseif task.step == 'verify_row' then
        local controlName, row, foundTab, control = findAAWindowRow(task.name, task.tab, task.occurrence)
        if not controlName or foundTab ~= task.tab or row ~= task.selectedRow then
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend('The selected AA row changed before training. No purchase was attempted; Auto Spend has been disabled.', 'error')
            return
        end

        local rowData = readAAWindowRowData(control, row)
        if not rowData or normalizeAAName(rowData.title) ~= normalizeAAName(task.name) then
            if task.openedByUs then closeAAWindow() end
            state.pendingPurchase = nil
            state.nextSpendAt = now + 2
            setStatus('Could not verify the selected AA row data. No purchase was attempted; the planner will retry.', 'warn')
            appendSupportLog(string.format('[PTAAPlanner] WINDOW VERIFY FAILED %s | row data unavailable or title mismatch', task.name))
            return
        end

        if rowData.currentRank == nil or rowData.currentRank ~= task.rankBefore then
            local cached = getCatalogAA(task.name, task.tab, task.occurrence)
            if rowData.currentRank ~= nil and cached then
                local oldRank = cached.windowRank
                local oldCost = cached.windowCost
                local oldMaxRank = cached.maxRank
                cached.windowRank = rowData.currentRank
                cached.windowCost = math.max(0, tonumber(rowData.cost) or 0)
                if rowData.maxRank and rowData.maxRank > 0 then
                    cached.maxRank = rowData.maxRank
                end
                appendSupportLog(string.format(
                    '[PTAAPlanner] WINDOW CACHE REFRESH %s #%d [%s] | Rank=%s->%s | Cost=%s->%s | MaxRank=%s->%s',
                    task.name, tonumber(task.occurrence) or 1,
                    tostring(TAB_NAMES[task.tab] or task.tab or 'Unknown'),
                    tostring(oldRank), tostring(cached.windowRank),
                    tostring(oldCost), tostring(cached.windowCost),
                    tostring(oldMaxRank), tostring(cached.maxRank)))
            end

            if task.openedByUs then closeAAWindow() end
            state.pendingPurchase = nil
            state.nextSpendAt = now + 0.25
            appendSupportLog(string.format(
                '[PTAAPlanner] WINDOW RANK CHANGED %s #%d [%s] | expected=%d window=%s | cacheRefreshed=%s | restarting purchase decision',
                task.name, tonumber(task.occurrence) or 1,
                tostring(TAB_NAMES[task.tab] or task.tab or 'Unknown'),
                task.rankBefore, tostring(rowData.currentRank),
                tostring(rowData.currentRank ~= nil and cached ~= nil)))
            setStatus('AA rank changed while preparing the purchase. Re-evaluating the priority list.', 'info', 4)
            recalculatePlannerStats()
            return
        end

        if rowData.cost <= 0 then
            if task.openedByUs then closeAAWindow() end
            state.pendingPurchase = nil
            state.nextSpendAt = now + 2
            appendSupportLog(string.format(
                '[PTAAPlanner] WINDOW COST UNRESOLVED %s | rank=%d cachedCost=%d',
                task.name, task.rankBefore, tonumber(task.cost or 0)))
            setStatus('The AA window did not expose a valid next-rank cost for ' .. task.name .. '. Retrying shortly.', 'warn')
            return
        end

        local cached = getCatalogAA(task.name, task.tab, task.occurrence)
        if cached then
            cached.windowRank = rowData.currentRank
            cached.windowCost = rowData.cost
            if rowData.maxRank and rowData.maxRank > 0 then cached.maxRank = rowData.maxRank end
        end

        if tonumber(task.cost or 0) ~= rowData.cost then
            appendSupportLog(string.format(
                '[PTAAPlanner] COST MISMATCH %s | rank=%d planner=%d window=%d | using AA window',
                task.name, task.rankBefore, tonumber(task.cost or 0), rowData.cost))
            task.cost = rowData.cost
            recalculatePlannerStats()
        end

        local currentPoints = getCurrentAAPoints()
        if currentPoints < rowData.cost then
            if task.openedByUs then closeAAWindow() end
            state.pendingPurchase = nil
            state.nextSpendAt = now + 0.50
            appendSupportLog(string.format(
                '[PTAAPlanner] WAITING %s rank %d | AAPoints=%d WindowCost=%d',
                task.name, task.rankBefore + 1, currentPoints, rowData.cost))
            setStatus(string.format('Waiting for %s rank %d: have %d AA, need %d.',
                task.name, task.rankBefore + 1, currentPoints, rowData.cost), 'info', 4)
            return
        end

        local _, windowName = getAAWindow()
        windowName = windowName or 'AAWindow'
        -- Reassert the exact verified row immediately before enabling the Train
        -- step. Do not send a generic mouse click to the list: that can select
        -- whichever row happens to be under the user's cursor.
        mq.cmdf('/nomodkey /notify %s %s listselect %d', windowName,
            task.selectedControlName or controlName, task.selectedRow)
        task.step = 'confirm_selection'
        task.nextStepAt = now + 0.2
    elseif task.step == 'confirm_selection' then
        local window = getAAWindow()
        local control = window and findChildRecursive(window, task.selectedControlName)
        local selectedRow = getSelectedListRow(control)
        if selectedRow and selectedRow ~= task.selectedRow then
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend(string.format('AA selection verification failed: expected row %d but the window selected row %d. No purchase was attempted.',
                task.selectedRow, selectedRow), 'error')
            return
        end
        task.step = 'click_train'
        task.nextStepAt = now + 0.05
    elseif task.step == 'click_train' then
        local finalSnapshotOK, finalSnapshotReason = purchaseSnapshotStillCurrent(task)
        if not finalSnapshotOK then
            abortPurchaseForQueueChange(task, finalSnapshotReason, now)
            return
        end

        local existingDialog = getConfirmationDialog()
        if existingDialog then
            stopAutoSpend('A confirmation dialog was already open before the AA purchase. It was left untouched; close it and try again.', 'error')
            return
        end
        local window, windowName = getAAWindow()
        windowName = windowName or 'AAWindow'
        local clicked = false
        for _, buttonName in ipairs({ 'AAW_TrainButton', 'TrainButton', 'AA_TrainButton' }) do
            local button
            pcall(function() button = window and window.Child(buttonName) end)
            if not button or not button() then button = window and findChildRecursive(window, buttonName) end
            if button and button() then
                mq.cmdf('/nomodkey /notify %s %s leftmouseup', windowName, buttonName)
                clicked = true
                break
            end
        end
        if not clicked then mq.cmdf('/nomodkey /notify %s AAW_TrainButton leftmouseup', windowName) end
        task.step = 'wait_confirmation'
        task.clickedAt = now
        task.confirmationDeadline = now + 2.5
        task.nextStepAt = now + 0.1
    elseif task.step == 'wait_confirmation' then
        -- Fast AA Purchase bypasses the confirmation dialog entirely. Detect
        -- the completed purchase before looking for a dialog so this path is
        -- both safe and immediate.
        local rankAfter = select(1, getAAProgress(task.name, task.tab, task.occurrence))
        local pointsAfter = getCurrentAAPoints()
        if rankAfter > task.rankBefore or pointsAfter < task.pointsBefore then
            if rankAfter <= task.rankBefore and pointsAfter < task.pointsBefore then
                local rowData = refreshTaskOccurrenceFromWindow(task)
                if rowData and rowData.currentRank ~= nil then
                    rankAfter = tonumber(rowData.currentRank) or rankAfter
                end
            end
            if task.openedByUs then closeAAWindow() end
            finishPurchaseSuccess(task, rankAfter, pointsAfter)
            return
        end

        local dialog, dialogName = getConfirmationDialog()
        if dialog then
            local dialogText = getConfirmationText(dialog)
            local lowerText = dialogText:lower()
            local expectedName = task.name:lower()
            local isExpected = dialogText ~= '' and
                lowerText:find(expectedName, 1, true) ~= nil and
                lowerText:find('train', 1, true) ~= nil
            if not isExpected then
                stopAutoSpend(string.format('The confirmation dialog did not match the planned AA "%s". It was left untouched; Auto Spend has been disabled.',
                    task.name), 'error')
                appendSupportLog(string.format('[PTAAPlanner] CONFIRMATION MISMATCH expected=%s text=%s',
                    task.name, dialogText ~= '' and dialogText or '<unreadable>'))
                return
            end
            mq.cmdf('/nomodkey /notify %s Yes_Button leftmouseup', dialogName)
            task.step = 'verify'
            task.confirmedAt = now
            task.clickedAt = now
            task.nextStepAt = now + 0.5
        elseif now >= (task.confirmationDeadline or now) then
            -- Some UI configurations may have AA confirmation disabled. In
            -- that case, continue to normal rank/point verification.
            task.step = 'verify'
            task.clickedAt = now
            task.nextStepAt = now + 0.1
        else
            task.nextStepAt = now + 0.1
        end
    elseif task.step == 'verify' then
        local rankAfter = select(1, getAAProgress(task.name, task.tab, task.occurrence))
        local pointsAfter = getCurrentAAPoints()
        if rankAfter > task.rankBefore or pointsAfter < task.pointsBefore then
            if rankAfter <= task.rankBefore and pointsAfter < task.pointsBefore then
                local rowData = refreshTaskOccurrenceFromWindow(task)
                if rowData and rowData.currentRank ~= nil then
                    rankAfter = tonumber(rowData.currentRank) or rankAfter
                end
            end
            if task.openedByUs then closeAAWindow() end
            finishPurchaseSuccess(task, rankAfter, pointsAfter)
        elseif now - (task.clickedAt or task.startedAt) > 6 then
            local controlName, row, foundTab, control = findAAWindowRow(task.name, task.tab, task.occurrence)
            local rowData = controlName and foundTab == task.tab and readAAWindowRowData(control, row) or nil
            local windowRank = rowData and rowData.currentRank or nil
            local windowCost = rowData and tonumber(rowData.cost or 0) or 0

            if rowData and windowRank == task.rankBefore and windowCost > 0 and windowCost ~= tonumber(task.cost or 0) then
                appendSupportLog(string.format(
                    '[PTAAPlanner] PURCHASE FAILURE COST MISMATCH %s | rank=%d attemptedCost=%d windowCost=%d | retrying with window cost',
                    task.name, task.rankBefore, tonumber(task.cost or 0), windowCost))
                local cached = getCatalogAA(task.name, task.tab, task.occurrence)
                if cached then
                    cached.windowRank = windowRank
                    cached.windowCost = windowCost
                end
                if task.openedByUs then closeAAWindow() end
                state.pendingPurchase = nil
                state.nextSpendAt = now + 0.25
                recalculatePlannerStats()
                setStatus(string.format('The AA window reports %d AA for %s. Updated the cost and will retry.',
                    windowCost, task.name), 'warn', 6)
                return
            end

            local canTrain = aaCanTrain(task.name)
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend(string.format(
                'Purchase of %s rank %d was not confirmed after verifying the AA window. Auto Spend has been disabled for review.',
                task.name, task.rankBefore + 1), 'error')
            appendSupportLog(string.format(
                '[PTAAPlanner] PURCHASE TIMEOUT %s rank %d | points=%d | WindowRank=%s | WindowCost=%s | AttemptedCost=%d | CanTrain=%s',
                task.name, task.rankBefore + 1, pointsAfter,
                tostring(windowRank), tostring(windowCost), tonumber(task.cost or 0), tostring(canTrain)))
        else
            task.nextStepAt = now + 0.25
        end
    end
end

local function enableAutoSpend()
    if #state.plan == 0 then
        setStatus('The priority list is empty.', 'warn')
        return
    end
    state.autoSpendEnabled = true
    state.autoManageActive = true
    state.nextSpendAt = 0
    writePrioritySnapshot('native auto spend enabled')
    setStatus('Native Lua Auto Spend enabled. Purchases follow the displayed priority order.', 'good', 8)
end

local function sortedSavedNames()
    local names = {}
    for name in pairs(state.savedLists) do names[#names + 1] = name end
    table.sort(names, function(a, b) return a:lower() < b:lower() end)
    return names
end

local function drawCatalogTab(tab)
    local label = TAB_NAMES[tab]
    if not ImGui.BeginTabItem(label) then return end
    state.selectedTab = tab

    ImGui.SetNextItemWidth(240)
    state.search = ImGui.InputTextWithHint('##search' .. tab, 'Search ' .. label .. ' AAs...', state.search, 128)
    ImGui.SameLine()
    state.hideMaxed = ImGui.Checkbox('Hide maxed##' .. tab, state.hideMaxed)
    ImGui.SameLine()
    if ImGui.Button('Refresh Catalog##' .. tab) then state.scanRequested = true end
    ImGui.Separator()

    if ImGui.BeginChild('catalog##' .. tab, 0, 390, true) then
        local query = state.search:lower()
        local any = false
        for _, aa in ipairs(state.catalog) do
            if aa.tab == tab and (query == '' or aa.name:lower():find(query, 1, true)) and (not state.hideMaxed or not aa.maxed) then
                any = true
                ImGui.PushID(string.format('catalog_%d_%s_%d', aa.tab, aa.name, tonumber(aa.occurrence) or 1))
                local rankText = aa.maxRank > 0 and string.format('%d/%d', aa.rank, aa.maxRank) or tostring(aa.rank)
                if ImGui.Button(planContains(aa) and 'Added' or 'Add', 52, 0) and not planContains(aa) then
                    queueAddToPlan(aa)
                end
                ImGui.SameLine()
                local aaLabel = aa.name
                if catalogOccurrenceTotal(aa.name, aa.tab) > 1 then
                    aaLabel = string.format('%s [%d]', aa.name, tonumber(aa.occurrence) or 1)
                end
                if aa.maxed then ImGui.TextColored(0.35, 0.9, 0.55, 1, aaLabel)
                else ImGui.Text(aaLabel) end
                ImGui.SameLine()
                ImGui.TextDisabled(string.format('Rank %s  Next cost: %d', rankText, aa.cost))
                if ImGui.IsItemHovered() then
                    ImGui.SetTooltip('%s', string.format('%s\nCurrent rank: %d\nMaximum rank: %d\nCan train next rank: %s',
                        aa.name, aa.rank, aa.maxRank, aa.canTrain and 'Yes' or 'No'))
                end
                ImGui.PopID()
            end
        end
        if not any then ImGui.TextDisabled('No matching AAs found. Try Refresh Catalog with the in-game AA window available.') end
    end
    ImGui.EndChild()
    ImGui.EndTabItem()
end

local function drawPriorityList()
    ImGui.Text(string.format('Purchase Priority (%d)', #state.plan))
    ImGui.SameLine()
    if ImGui.Button('Clear All') then state.plan = {}; markPlanDirty() end

    ImGui.Text(string.format('Unspent AA Points: %d', state.aaPoints or 0))
    local costLabel = state.queueCostComplete and
        string.format('Priority List Cost: %d AA', state.queueCost or 0) or
        string.format('Priority List Cost: at least %d AA (some future rank costs unresolved)', state.queueCost or 0)
    ImGui.Text(costLabel)
    local needed = math.max(0, (state.queueCost or 0) - (state.aaPoints or 0))
    ImGui.Text(string.format('Additional AA Needed: %d', needed))
    ImGui.TextDisabled(state.autoSpendEnabled and 'Native Auto Spend: enabled' or 'Native Auto Spend: disabled')

    local skipBlocked = ImGui.Checkbox('Skip AAs with unmet prerequisites', state.skipUnmetPrerequisites)
    if skipBlocked ~= state.skipUnmetPrerequisites then
        state.skipUnmetPrerequisites = skipBlocked
        state.prerequisiteRuntimeStatus = {}
        markDirty()
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip('%s',
            'Only confirmed unmet AA prerequisites are skipped. The AA stays in its original queue position and is re-evaluated every pass.')
    end

    local nextCost, nextName, nextRank, nextTarget, _, nextQueueState = getTopPriorityCost()
    if nextName then
        local rankFrom = tonumber(nextRank or 0)
        local rankTo = rankFrom + 1
        if nextTarget and tonumber(nextTarget) and tonumber(nextTarget) > 0 then
            ImGui.Text(string.format('Next Purchase: %s (Rank %d -> %d / %d)',
                nextName, rankFrom, rankTo, tonumber(nextTarget)))
        else
            ImGui.Text(string.format('Next Purchase: %s (Rank %d -> %d)', nextName, rankFrom, rankTo))
        end
        if tonumber(nextCost or 0) > 0 then
            ImGui.Text(string.format('Cost: %d AA', math.floor(tonumber(nextCost) or 0)))
        else
            ImGui.TextDisabled('Cost: unresolved')
        end
    else
        if nextQueueState and nextQueueState.state == 'all_blocked' then
            ImGui.TextDisabled('Next Purchase: none — waiting on prerequisites')
            ImGui.TextDisabled(string.format('%d queued AA%s currently skipped.',
                tonumber(nextQueueState.skippedCount or 0),
                tonumber(nextQueueState.skippedCount or 0) == 1 and ' is' or 's are'))
        else
            ImGui.TextDisabled('Next Purchase: none')
            ImGui.TextDisabled('Cost: 0 AA')
        end
    end


    if ImGui.CollapsingHeader('Auto Spend Safety Checks') then
        ImGui.TextDisabled('Purchases are skipped/retried while any checked condition is true.')
        ImGui.TextDisabled('Turn a check off if it is not actually needed on your server.')

        local function safetyCheckbox(label, key, tooltip)
            local newValue = ImGui.Checkbox(label, state[key])
            if newValue ~= state[key] then
                state[key] = newValue
                markPlanDirty()
            end
            if ImGui.IsItemHovered() then ImGui.SetTooltip('%s', tooltip) end
        end

        safetyCheckbox('Casting', 'safetyCheckCasting',
            'Block while actively casting a spell. Recommended: on.')
        safetyCheckbox('Moving', 'safetyCheckMoving',
            'Block while moving. Usually safe to turn off for pull/hunt modes.')
        safetyCheckbox('Navigating (nav plugin)', 'safetyCheckNavigating',
            'Block while a nav plugin path is actively running.')
        safetyCheckbox('In Combat', 'safetyCheckCombat',
            'Block while Combat/CombatState reports you are engaged. Some servers reject training while this is true; disable to test.')
        safetyCheckbox('Using AutoFire', 'safetyCheckAutofire',
            'Block while ranged autofire is active.')
        safetyCheckbox('Live XTargets (aggro)', 'safetyCheckXTargets',
            'Block while any XTarget shows as a hater. Nearly always true while hunting; usually safe to turn off.')
    end

    ImGui.Separator()
    if ImGui.BeginChild('priority_list', 0, 310, true) then
        for i, entry in ipairs(state.plan) do
            ImGui.PushID(string.format('plan_%d_%s_%d_%d', i, entry.name, tonumber(entry.tab) or 0, tonumber(entry.occurrence) or 1))
            ImGui.Text(string.format('%d.', i))
            ImGui.SameLine()
            if ImGui.SmallButton('Up') then movePlan(i, -1) end
            ImGui.SameLine()
            if ImGui.SmallButton('Down') then movePlan(i, 1) end
            ImGui.SameLine()
            if ImGui.SmallButton('Remove') then table.remove(state.plan, i); markPlanDirty(); ImGui.PopID(); break end
            ImGui.SameLine()
            ImGui.SetNextItemWidth(68)
            local rankValue = ImGui.InputText('##rank', tostring(entry.rank), 8)
            rankValue = trim(rankValue):upper()
            if rankValue ~= entry.rank and validateRank(rankValue) then entry.rank = validateRank(rankValue); markPlanDirty() end
            if ImGui.IsItemHovered() then ImGui.SetTooltip('%s', 'Target rank, or M for maximum available rank.') end
            ImGui.SameLine()
            local tabLabel = TAB_NAMES[entry.tab] or 'Unknown'
            local occurrenceLabel = catalogOccurrenceTotal(entry.name, entry.tab) > 1
                and string.format(' #%d', math.max(1, tonumber(entry.occurrence) or 1)) or ''
            ImGui.Text(string.format('%s%s  [%s]', entry.name, occurrenceLabel, tabLabel))

            local prereqRuntime = state.prerequisiteRuntimeStatus[entryIdentity(entry)]
            if state.skipUnmetPrerequisites and prereqRuntime and prereqRuntime.state == 'unmet' then
                local info = prereqRuntime.info or {}
                ImGui.SameLine()
                ImGui.TextDisabled('Skipping — prerequisite not met')
                if ImGui.IsItemHovered() then
                    ImGui.SetTooltip('%s', string.format('Requires %s rank %d; current rank %d.',
                        tostring(info.requiredName or 'unknown prerequisite'),
                        tonumber(info.requiredRank or 0),
                        tonumber(info.currentRank or 0)))
                end
            end
            ImGui.PopID()
        end
    end
    ImGui.EndChild()

    if state.manualSpendQueued then
        if ImGui.Button('Cancel Queued Spend', 190, 32) then
            state.manualSpendQueued = false
            setStatus('Queued Spend Next request cancelled.', 'info')
        end
    elseif ImGui.Button('Spend Next Now', 190, 32) then
        requestSpendPass(true)
    end
    ImGui.SameLine()
    if state.autoSpendEnabled then
        if ImGui.Button('Disable Auto Spend', 170, 32) then
            state.autoSpendEnabled = false
            state.autoManageActive = false
            setStatus('Native Lua Auto Spend disabled.', 'info')
        end
    elseif ImGui.Button('Enable Auto Spend', 170, 32) then
        state.enableRequested = true
    end
    ImGui.SameLine()
    ImGui.TextDisabled('Lua-native; no plugin required')
end

local function drawSaveControls()
    ImGui.SetNextItemWidth(180)
    state.saveName = ImGui.InputTextWithHint('##saveName', 'Saved-list name...', state.saveName, 64)
    ImGui.SameLine()
    if ImGui.Button('Save Current') then
        local name = trim(state.saveName)
        if name == '' then
            setStatus('Enter a name before saving.', 'warn')
        elseif state.pendingListSave or state.pendingListDelete then
            setStatus('Another named-list update is already pending.', 'warn')
        else
            -- Do not perform blocking persistence work from the ImGui callback.
            -- Capture a snapshot and let the top-level loop perform the mutation.
            state.pendingListSave = { name = name, plan = copyPlan(state.plan) }
            setStatus('Saving named list: ' .. name .. '...', 'info')
        end
    end

    local names = sortedSavedNames()
    ImGui.SetNextItemWidth(180)
    local selectedIndex = 1
    for i, name in ipairs(names) do if name == state.selectedSaved then selectedIndex = i break end end
    if #names == 0 then
        ImGui.TextDisabled('No named lists saved yet.')
    else
        local newIndex = ImGui.Combo('##savedLists', selectedIndex, names)
        state.selectedSaved = names[newIndex] or names[1]
        ImGui.SameLine()
        if ImGui.Button('Load Saved') then
            state.plan = copyPlan(state.savedLists[state.selectedSaved])
            markPlanDirty()
            setStatus('Loaded saved list: ' .. state.selectedSaved, 'good')
        end
        ImGui.SameLine()
        if ImGui.Button('Delete Saved') then
            local deleting = state.selectedSaved
            if state.pendingListSave or state.pendingListDelete then
                setStatus('Another named-list update is already pending.', 'warn')
            else
                -- Defer lock acquisition and disk I/O to the top-level loop.
                state.pendingListDelete = deleting
                setStatus('Deleting named list: ' .. deleting .. '...', 'info')
            end
        end
    end

    if ImGui.Button('Import / Export') then
        state.showTransfer = not state.showTransfer
        state.transferMode = 'Import'
        state.importText = ''
    end
    ImGui.SameLine()
    if ImGui.Button('Copy Planner Format') then
        local text = exportPlannerList()
        pcall(ImGui.SetClipboardText, text)
        setStatus('Copied the shareable planner list to the clipboard.', 'good')
    end
end

local function drawTransferWindow()
    if not state.showTransfer then return end
    local visible
    state.showTransfer, visible = ImGui.Begin('AA Planner Import / Export', state.showTransfer)
    if visible then
        ImGui.TextWrapped('Paste an AAPLANNER1 export or legacy Name|Rank entries. Import replaces the current working list.')
        ImGui.SetNextItemWidth(-1)
        state.importText = ImGui.InputTextMultiline('##transferText', state.importText, -1, 260)
        if ImGui.Button('Paste Clipboard') then
            local ok, value = pcall(ImGui.GetClipboardText)
            if ok and value then state.importText = value end
        end
        ImGui.SameLine()
        if ImGui.Button('Import and Replace Current') then
            local imported, err = parseImport(state.importText)
            if imported then
                state.plan = imported
                markPlanDirty()
                state.showTransfer = false
                setStatus(string.format('Imported %d AA priorities.', #imported), 'good')
            else setStatus(err, 'error') end
        end
        ImGui.SameLine()
        if ImGui.Button('Show Current Export') then state.importText = exportPlannerList() end
    end
    ImGui.End()
end

local function setCompactMode(enabled)
    enabled = enabled == true
    if state.compactMode ~= enabled then
        state.compactMode = enabled
        state.windowResizeRequested = true
        markDirty()
    end
end

local function drawCompactWindow()
    local visible

    if state.windowResizeRequested then
        ImGui.SetNextWindowSize(390, 255, ImGuiCond.Always)
        state.windowResizeRequested = false
    else
        ImGui.SetNextWindowSize(390, 255, ImGuiCond.FirstUseEver)
    end

    open, visible = ImGui.Begin(APP_NAME .. ' v' .. VERSION .. ' - Compact', open)
    if visible then
        local nextCost, nextName, nextRank, target, _, nextQueueState = getTopPriorityCost()

        ImGui.Text(string.format('Unspent AA Points: %d', state.aaPoints or 0))

        ImGui.Text(state.autoSpendEnabled and 'Native Auto Spend: enabled' or 'Native Auto Spend: disabled')

        if nextName then
            ImGui.Separator()
            ImGui.TextWrapped(string.format('Next Purchase: %s', nextName))

            if target and tonumber(target) and tonumber(target) > 0 then
                ImGui.Text(string.format('Rank: %d -> %d / %d',
                    tonumber(nextRank or 0), tonumber(nextRank or 0) + 1, tonumber(target)))
            else
                ImGui.Text(string.format('Current Rank: %d', tonumber(nextRank or 0)))
            end

            if tonumber(nextCost or 0) > 0 then
                ImGui.Text(string.format('Cost: %d AA', math.floor(tonumber(nextCost) or 0)))
            else
                ImGui.TextDisabled('Cost: unresolved')
            end

        else
            ImGui.Separator()
            if nextQueueState and nextQueueState.state == 'all_blocked' then
                ImGui.TextDisabled('Next Purchase: none')
                ImGui.TextDisabled(string.format('Waiting on prerequisites (%d skipped)',
                    tonumber(nextQueueState.skippedCount or 0)))
            else
                ImGui.TextDisabled('Priority list complete.')
            end
        end


        ImGui.Separator()
        if ImGui.Button('Full Mode', 110, 28) then
            setCompactMode(false)
        end
        ImGui.SameLine()
        if state.autoSpendEnabled then
            if ImGui.Button('Disable Auto', 110, 28) then
                state.autoSpendEnabled = false
                state.autoManageActive = false
                setStatus('Native Lua Auto Spend disabled.', 'info')
            end
        elseif ImGui.Button('Enable Auto', 110, 28) then
            state.enableRequested = true
        end
        ImGui.SameLine()
        ImGui.TextDisabled(string.format('%d remaining', #state.plan))
    end
    ImGui.End()
end

local function drawMainWindow()
    if state.compactMode then
        drawCompactWindow()
        drawTransferWindow()
        return
    end

    local visible
    if state.windowResizeRequested then
        ImGui.SetNextWindowSize(1050, 720, ImGuiCond.Always)
        state.windowResizeRequested = false
    else
        ImGui.SetNextWindowSize(1050, 720, ImGuiCond.FirstUseEver)
    end
    open, visible = ImGui.Begin(APP_NAME .. ' v' .. VERSION, open, ImGuiWindowFlags.MenuBar)
    if visible then
        if ImGui.BeginMenuBar() then
            if ImGui.BeginMenu('File') then
                if ImGui.MenuItem('Save working list') then
                    local ok, err = writeCharacterData()
                    if ok then setStatus('Working list saved for this character.', 'good')
                    else setStatus('Could not save working list: ' .. tostring(err), 'error') end
                end
                if ImGui.MenuItem('Import / Export') then state.showTransfer = true end
                if ImGui.MenuItem('Close') then open = false end
                ImGui.EndMenu()
            end
            if ImGui.MenuItem('Compact Mode') then
                setCompactMode(true)
            end
            ImGui.EndMenuBar()
        end

        if state.status ~= '' then
            if state.statusKind == 'error' then ImGui.TextColored(1, 0.35, 0.35, 1, state.status)
            elseif state.statusKind == 'warn' then ImGui.TextColored(1, 0.72, 0.3, 1, state.status)
            elseif state.statusKind == 'good' then ImGui.TextColored(0.35, 0.9, 0.55, 1, state.status)
            else ImGui.TextWrapped(state.status) end
        end
        ImGui.Separator()

        if ImGui.BeginTable('main_layout', 2, bit.bor(ImGuiTableFlags.Resizable, ImGuiTableFlags.BordersInnerV)) then
            ImGui.TableSetupColumn('AA Catalog', ImGuiTableColumnFlags.WidthStretch, 1.15)
            ImGui.TableSetupColumn('Priority', ImGuiTableColumnFlags.WidthStretch, 1.0)
            ImGui.TableNextRow()
            ImGui.TableNextColumn()
            if ImGui.BeginTabBar('aa_tabs') then
                drawCatalogTab(1)
                drawCatalogTab(2)
                drawCatalogTab(3)
                drawCatalogTab(4)
                ImGui.EndTabBar()
            end
            ImGui.TableNextColumn()
            drawPriorityList()
            ImGui.EndTable()
        end
        ImGui.Separator()
        drawSaveControls()
    end
    ImGui.End()
    drawTransferWindow()
end

loadSavedData()
recalculatePlannerStats()

mq.bind('/aaplanner', function(...)
    -- MacroQuest passes bound command arguments as separate callback arguments.
    -- Reconstruct the full argument string so multi-word AA names survive intact.
    local parts = { ... }
    for i = 1, #parts do
        parts[i] = tostring(parts[i] or '')
    end
    local rawCommand = trim(table.concat(parts, ' '))
    local commandName, commandArgs = rawCommand:match('^(%S+)%s*(.-)$')
    commandName = (commandName or ''):lower()
    commandArgs = trim(commandArgs or '')

    if commandName == 'quit' or commandName == 'exit' then open = false
    elseif commandName == 'refresh' then state.scanRequested = true
    elseif commandName == 'prereqdb' then
        runPrereqDBLookup(commandArgs)
    elseif commandName == 'debug' then
        recalculatePlannerStats()
        local counts = { 0, 0, 0, 0 }
        for _, aa in ipairs(state.catalog) do
            if counts[aa.tab] then counts[aa.tab] = counts[aa.tab] + 1 end
        end
        print(string.format('\at[AA Planner Debug]\ax Version=%s VerboseDebug=%s', VERSION, tostring(VERBOSE_DEBUG)))
        print(string.format('\at[AA Planner Debug]\ax PrereqDB Loaded=%s Schema=%s Error=%s',
            tostring(prereqDB ~= nil),
            prereqDB and tostring(prereqDB.schemaVersion) or 'none',
            tostring(prereqDBLoadError or 'none')))
        local duplicateNames = 0
        local seenCatalogNames = {}
        for _, aa in ipairs(state.catalog) do
            local key = tostring(aa.name or ''):lower()
            if seenCatalogNames[key] then
                duplicateNames = duplicateNames + 1
            else
                seenCatalogNames[key] = true
            end
        end
        print(string.format('\at[AA Planner Debug]\ax CatalogOccurrences=%d CrossTabDuplicateOccurrences=%d',
            #state.catalog, duplicateNames))
        print(string.format('\at[AA Planner Debug]\ax General=%d Archetype=%d Class=%d Special=%d Plan=%d NativeAutoSpend=%s',
            counts[1], counts[2], counts[3], counts[4], #state.plan, tostring(state.autoSpendEnabled)))
        print(string.format('\at[AA Planner Debug]\ax AAWindow=%s Controls=%d Lists=%d Rows=%d Cells=%d',
            tostring(state.scanStats.window), tonumber(state.scanStats.controls or 0),
            tonumber(state.scanStats.listControls or 0), tonumber(state.scanStats.rows or 0),
            tonumber(state.scanStats.cells or 0)))
        local tabRows = state.scanStats.tabRows or {}
        local tabAAs = state.scanStats.tabAAs or {}
        print(string.format('\at[AA Planner Debug]\ax ScanByTab General=%d rows/%d AAs Archetype=%d rows/%d AAs Class=%d rows/%d AAs Special=%d rows/%d AAs',
            tonumber(tabRows[1] or 0), tonumber(tabAAs[1] or 0),
            tonumber(tabRows[2] or 0), tonumber(tabAAs[2] or 0),
            tonumber(tabRows[3] or 0), tonumber(tabAAs[3] or 0),
            tonumber(tabRows[4] or 0), tonumber(tabAAs[4] or 0)))
        for i, err in ipairs(state.scanStats.tabErrors or {}) do
            print(string.format('\ar[AA Planner Debug]\ax TabScanError[%d]=%s', i, tostring(err)))
        end
        print(string.format('\at[AA Planner Debug]\ax ConfigDir=%s SaveFile=%s',
            tostring(configDir), tostring(resolveCharacterSaveFile() or 'unavailable')))
        print(string.format('\at[AA Planner Debug]\ax SharedListsFile=%s', tostring(sharedSaveFile)))
        local prereqCacheCount = 0
        for _ in pairs(state.prerequisiteCache or {}) do prereqCacheCount = prereqCacheCount + 1 end
        print(string.format('\at[AA Planner Debug]\ax PrereqSkip=%s CatalogGeneration=%d PrereqCacheEntries=%d',
            tostring(state.skipUnmetPrerequisites), tonumber(state.catalogGeneration or 0), prereqCacheCount))
		print(string.format('\at[AA Planner Debug]\ax AAPoints=%d QueueCost=%d QueueCostComplete=%s AutoManage=%s Pending=%s ManualQueued=%s',
			tonumber(state.aaPoints or 0), tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
			tostring(state.autoManageActive),
            state.pendingPurchase and tostring(state.pendingPurchase.name) or 'none',
            tostring(state.manualSpendQueued)))
        print(string.format('\at[AA Planner Debug]\ax PendingListSave=%s PendingListDelete=%s',
            state.pendingListSave and tostring(state.pendingListSave.name) or 'none',
            state.pendingListDelete and tostring(state.pendingListDelete) or 'none'))
        print(string.format('\at[AA Planner Debug]\ax SafetyChecks Casting=%s Moving=%s Navigating=%s Combat=%s AutoFire=%s XTargets=%s',
            tostring(state.safetyCheckCasting), tostring(state.safetyCheckMoving), tostring(state.safetyCheckNavigating),
            tostring(state.safetyCheckCombat), tostring(state.safetyCheckAutofire), tostring(state.safetyCheckXTargets)))
        writePrioritySnapshot('/aaplanner debug', true)
        print(string.format('\at[AA Planner Debug]\ax Priority snapshot appended to %s',
            tostring(getDebugLogPath() or 'debug log unavailable')))
    elseif commandName == 'compact' then
        open = true
        setCompactMode(true)
    elseif commandName == 'full' then
        open = true
        setCompactMode(false)
    elseif commandName == 'show' or commandName == '' then open = true
    else print('\at[AA Planner]\ax /aaplanner [show|compact|full|refresh|debug|prereqdb <tab> <AA name>|quit]') end
end)

mq.imgui.init('AAPlanner', drawMainWindow)

local function processPendingSharedListMutation()
    if state.pendingListSave then
        local request = state.pendingListSave
        state.pendingListSave = nil

        local ok, err = saveNamedList(request.name, request.plan)
        if ok then
            state.selectedSaved = request.name
            setStatus('Saved list: ' .. request.name, 'good')
        else
            setStatus('Could not save named list: ' .. tostring(err), 'error')
        end
        return true
    end

    if state.pendingListDelete then
        local deleting = state.pendingListDelete
        state.pendingListDelete = nil

        local ok, err = deleteNamedList(deleting)
        if ok then
            if state.selectedSaved == deleting then state.selectedSaved = '' end
            setStatus('Deleted the saved list.', 'info')
        else
            setStatus('Could not update named lists: ' .. tostring(err), 'error')
        end
        return true
    end

    return false
end

local function processPendingAddValidation()
    if not state.pendingAddValidation then return false end

    local request = state.pendingAddValidation
    state.pendingAddValidation = nil

    local aa = getCatalogAA(request.name, request.tab, request.occurrence)
    if not aa then
        aa = {
            name = request.name,
            maxRank = request.maxRank,
            tab = request.tab,
            occurrence = request.occurrence,
        }
    end

    performAddToPlan(aa)
    return true
end


while open do
    clearExpiredStatus()
    if state.scanRequested then state.scanRequested = false; refreshCatalog() end
    if state.enableRequested then state.enableRequested = false; enableAutoSpend() end
    processPendingSharedListMutation()
    processPendingAddValidation()

    processNativePurchase()

    -- Auto Spend has one purchase gate: the user-configurable checks in
    -- playerBusyReason(). AAPlanner does not pause, resume, or otherwise
    -- control TAC. Disabling a safety check explicitly allows purchases while
    -- that condition is true.
    if not state.pendingPurchase
        and state.autoSpendEnabled
        and monotonicSeconds() >= (state.nextSpendAt or 0) then
        requestSpendPass(false)
    end

    local now = os.time()
    if now ~= state.maintenanceAt then
        state.maintenanceAt = now
        pruneCompletedPlan()
        recalculatePlannerStats()

        local sharedNow = monotonicSeconds()
        if sharedNow >= (state.sharedListsRefreshAt or 0) then
            refreshSharedListsFromDisk()
            state.sharedListsRefreshAt = sharedNow + 2
        end

        if not state.pendingPurchase
            and state.manualSpendQueued
            and monotonicSeconds() >= (state.nextSpendAt or 0) then
            requestSpendPass(true)
        end
    end

    if state.dirty then
        -- Debouncing is unnecessary at this scale; persisting here protects the
        -- working list if EQ or MacroQuest closes unexpectedly.
        local ok, err = writeCharacterData()
        if not ok then setStatus('Could not save character state: ' .. tostring(err), 'error') end
    end
    mq.delay(50)
end

local finalSaveOK, finalSaveErr = writeCharacterData()
if not finalSaveOK then print('\ar[AA Planner]\ax Final character-state save failed: ' .. tostring(finalSaveErr)) end
mq.unbind('/aaplanner')
print('\at[AA Planner]\ax Stopped.')
