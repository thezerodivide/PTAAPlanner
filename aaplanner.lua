---@diagnostic disable: undefined-global, undefined-field

-- AA Planner for Project Triune / MacroQuest
-- Standalone ImGui planner and native Lua AA spender.
-- Run with: /lua run aaplanner

local mq = require('mq')
local ImGui = require('ImGui')

local APP_NAME = 'Project Triune AA Planner'
local VERSION = '0.2'
local open = true

local configDir = mq.configDir
if not configDir or configDir == '' then
    pcall(function() configDir = mq.TLO.MacroQuest.Path('config')() end)
end
configDir = configDir or '.'

local saveFile = configDir .. '/aaplanner_lists.lua'
local TAB_NAMES = { [1] = 'General', [2] = 'Archetype', [3] = 'Class' }
local TAB_IDS = { General = 1, Archetype = 2, Class = 3 }
local CLASS_ABBR = { 'WAR', 'CLR', 'PAL', 'RNG', 'SHD', 'DRU', 'MNK', 'BRD', 'ROG', 'SHM', 'NEC', 'WIZ', 'MAG', 'ENC', 'BST', 'BER' }
local CLASS_NAME = {
    WAR = 'Warrior', CLR = 'Cleric', PAL = 'Paladin', RNG = 'Ranger', SHD = 'Shadowknight',
    DRU = 'Druid', MNK = 'Monk', BRD = 'Bard', ROG = 'Rogue', SHM = 'Shaman',
    NEC = 'Necromancer', WIZ = 'Wizard', MAG = 'Magician', ENC = 'Enchanter',
    BST = 'Beastlord', BER = 'Berserker'
}
local CLASS_LOOKUP = {}
for _, abbr in ipairs(CLASS_ABBR) do
    CLASS_LOOKUP[abbr] = abbr
    CLASS_LOOKUP[CLASS_NAME[abbr]:upper():gsub('[%s_%-]', '')] = abbr
end
CLASS_LOOKUP.SK = 'SHD'
CLASS_LOOKUP.SHADOWKNIGHT = 'SHD'
CLASS_LOOKUP.BEAST = 'BST'

local state = {
    classes = { 'WAR', 'CLR', 'ROG' },
    classDetected = false,
    selectedTab = 1,
    search = '',
    hideMaxed = false,
    catalog = {},
    catalogByName = {},
    plan = {},
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
    detectRequested = true,
    enableRequested = false,
    dirty = false,
    autoManageActive = false,
    autoSpendEnabled = false,
    consumeExperience = false,
    consumeExperienceThreshold = 100,
    aaPoints = 0,
    queueCost = 0,
    queueCostComplete = true,
    topPriorityName = nil,
    topPriorityRank = nil,
    compactMode = false,
    windowResizeRequested = false,
    maintenanceAt = 0,
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
        result[i] = { name = entry.name, rank = entry.rank, tab = entry.tab }
    end
    return result
end

local function writeSavedData()
    local file, err = io.open(saveFile, 'wb')
    if not file then return false, err end
    file:write('return {\n')
    file:write('  classes = {')
    for i, cls in ipairs(state.classes) do
        if i > 1 then file:write(', ') end
        file:write(escapeLuaString(cls))
    end
    file:write('},\n  current = {\n')
    for _, entry in ipairs(state.plan) do
        file:write(string.format('    {name=%s, rank=%s, tab=%d},\n',
            escapeLuaString(entry.name), escapeLuaString(entry.rank), tonumber(entry.tab) or 0))
    end
    file:write('  },\n')
    file:write(string.format('  compactMode = %s,\n', tostring(state.compactMode == true)))
    file:write(string.format('  consumeExperience = %s,\n', tostring(state.consumeExperience == true)))
    file:write(string.format('  consumeExperienceThreshold = %d,\n',
        math.max(1, math.floor(tonumber(state.consumeExperienceThreshold) or 100))))
    file:write(string.format('  safetyCheckCasting = %s,\n', tostring(state.safetyCheckCasting == true)))
    file:write(string.format('  safetyCheckMoving = %s,\n', tostring(state.safetyCheckMoving == true)))
    file:write(string.format('  safetyCheckNavigating = %s,\n', tostring(state.safetyCheckNavigating == true)))
    file:write(string.format('  safetyCheckCombat = %s,\n', tostring(state.safetyCheckCombat == true)))
    file:write(string.format('  safetyCheckAutofire = %s,\n', tostring(state.safetyCheckAutofire == true)))
    file:write(string.format('  safetyCheckXTargets = %s,\n', tostring(state.safetyCheckXTargets == true)))
    file:write('  lists = {\n')
    local names = {}
    for name in pairs(state.savedLists) do names[#names + 1] = name end
    table.sort(names, function(a, b) return a:lower() < b:lower() end)
    for _, name in ipairs(names) do
        file:write(string.format('    [%s] = {\n', escapeLuaString(name)))
        for _, entry in ipairs(state.savedLists[name]) do
            file:write(string.format('      {name=%s, rank=%s, tab=%d},\n',
                escapeLuaString(entry.name), escapeLuaString(entry.rank), tonumber(entry.tab) or 0))
        end
        file:write('    },\n')
    end
    file:write('  }\n}\n')
    file:close()
    state.dirty = false
    return true
end

local function loadSavedData()
    local chunk = loadfile(saveFile)
    if not chunk then return end
    local ok, data = pcall(chunk)
    if not ok or type(data) ~= 'table' then return end
    if type(data.classes) == 'table' and #data.classes == 3 then
        state.classes = data.classes
    end
    if type(data.current) == 'table' then state.plan = copyPlan(data.current) end
    if type(data.compactMode) == 'boolean' then state.compactMode = data.compactMode end
    if type(data.consumeExperience) == 'boolean' then state.consumeExperience = data.consumeExperience end
    if tonumber(data.consumeExperienceThreshold) then
        state.consumeExperienceThreshold = math.max(1, math.floor(tonumber(data.consumeExperienceThreshold)))
    end
    if type(data.safetyCheckCasting) == 'boolean' then state.safetyCheckCasting = data.safetyCheckCasting end
    if type(data.safetyCheckMoving) == 'boolean' then state.safetyCheckMoving = data.safetyCheckMoving end
    if type(data.safetyCheckNavigating) == 'boolean' then state.safetyCheckNavigating = data.safetyCheckNavigating end
    if type(data.safetyCheckCombat) == 'boolean' then state.safetyCheckCombat = data.safetyCheckCombat end
    if type(data.safetyCheckAutofire) == 'boolean' then state.safetyCheckAutofire = data.safetyCheckAutofire end
    if type(data.safetyCheckXTargets) == 'boolean' then state.safetyCheckXTargets = data.safetyCheckXTargets end
    if type(data.lists) == 'table' then
        for name, list in pairs(data.lists) do
            if type(name) == 'string' and type(list) == 'table' then
                state.savedLists[name] = copyPlan(list)
            end
        end
    end
end

local function markDirty()
    state.dirty = true
end

local function markPlanDirty()
    state.dirty = true
end

local function normalizeClass(text)
    local value = trim(text):upper():gsub('[%s_%-]', '')
    if value == '' then return nil end
    if CLASS_LOOKUP[value] then return CLASS_LOOKUP[value] end
    for word in trim(text):upper():gmatch('%a+') do
        if CLASS_LOOKUP[word] then return CLASS_LOOKUP[word] end
    end
    return nil
end

local function addUniqueClass(found, value)
    local cls = normalizeClass(value)
    if not cls then return end
    for _, existing in ipairs(found) do
        if existing == cls then return end
    end
    if #found < 3 then found[#found + 1] = cls end
end

local function readClassControl(control, found)
    if not control or not control() then return end
    pcall(function()
        local text = control.Text()
        if text and text ~= '' and text ~= 'NULL' then
            for line in tostring(text):gmatch('[^\r\n]+') do addUniqueClass(found, line) end
        end
    end)
    pcall(function()
        local count = tonumber(control.Items() or 0) or 0
        for row = 1, math.min(count, 10) do
            local text = control.List(row)()
            if text and text ~= '' and text ~= 'NULL' then addUniqueClass(found, text) end
        end
    end)
end

local function detectClasses()
    local wasOpen = false
    pcall(function() wasOpen = mq.TLO.Window('InventoryWindow').Open() == true end)
    if not wasOpen then
        mq.cmd('/windowstate InventoryWindow open')
        mq.delay(250)
    end

    local found = {}
    pcall(function()
        local inventory = mq.TLO.Window('InventoryWindow')
        if not inventory or not inventory() then return end
        for _, childName in ipairs({ 'IW_ClassAbbr', 'IW_Class', 'IW_ClassList' }) do
            readClassControl(inventory.Child(childName), found)
            if #found == 3 then break end
        end
    end)

    if not wasOpen then mq.cmd('/windowstate InventoryWindow close') end
    if #found == 3 then
        state.classes = found
        state.classDetected = true
        markDirty()
        setStatus('Detected classes: ' .. table.concat(found, ' / '), 'good')
    else
        state.classDetected = false
        setStatus('Class autodetection did not return three classes. Use the manual selectors.', 'warn')
    end
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

local function getAAProgress(name)
    local personal = mq.TLO.Me.AltAbility(name)
    local global = mq.TLO.AltAbility(name)
    local rank = tonumber(safeAAValue(personal, 'Rank', 0)) or 0
    local maxRank = tonumber(safeAAValue(personal, 'MaxRank', 0)) or 0
    if maxRank <= 0 then maxRank = tonumber(safeAAValue(global, 'MaxRank', 0)) or 0 end
    local cost = tonumber(safeAAValue(personal, 'Cost', 0)) or 0
    if cost <= 0 then cost = tonumber(safeAAValue(global, 'Cost', 0)) or 0 end
    return rank, maxRank, cost
end

local function getEntryTarget(entry, maxRank)
    if tostring(entry.rank):upper() == 'M' then return tonumber(maxRank) or 0 end
    return tonumber(entry.rank) or 0
end

local function isEntryComplete(entry)
    local rank, maxRank = getAAProgress(entry.name)
    local target = getEntryTarget(entry, maxRank)
    return target > 0 and rank >= target
end

local function getRankCostMap(name)
    -- MacroQuest exposes the current next-rank cost. Future ranks remain
    -- unresolved until the preceding rank has actually been purchased.
    local costs = {}
    local rank, _, cost = getAAProgress(name)
    if cost > 0 then costs[rank + 1] = cost end
    return costs
end

local function remainingCostForEntry(entry)
    local rank, maxRank, nextCost = getAAProgress(entry.name)
    local target = getEntryTarget(entry, maxRank)
    if target <= 0 or rank >= target then return 0, true end

    local costs = getRankCostMap(entry.name)
    local total = 0
    local complete = true
    for wanted = rank + 1, target do
        local cost = costs[wanted]
        if cost == nil and wanted == rank + 1 and nextCost > 0 then cost = nextCost end
        if cost == nil then
            complete = false
        else
            total = total + cost
        end
    end
    return total, complete
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
    for _, entry in ipairs(state.plan) do
        local rank, maxRank, cost = getAAProgress(entry.name)
        local target = getEntryTarget(entry, maxRank)
        if target > 0 and rank < target then
            return math.max(0, tonumber(cost) or 0), entry.name, rank, target
        end
    end
    return 0, nil, 0, 0
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
        state.dirty = true
        print(string.format('\at[AA Planner]\ax Removed completed AA%s from priority list: %s',
            #removed == 1 and '' or 's', table.concat(removed, ', ')))
    end
    return #removed
end

local function recordAA(name, forcedTab)
    name = trim(name)
    if name == '' or tonumber(name) or state.catalogByName[name:lower()] then return end

    local personal = mq.TLO.Me.AltAbility(name)
    local global = mq.TLO.AltAbility(name)
    local personalExists = false
    pcall(function() personalExists = personal and personal() ~= nil end)
    -- The global AltAbility TLO contains every class's AAs. For database
    -- discovery, only accept entries associated with this character. An AA
    -- read from the character's visible AA window is already authoritative.
    if not forcedTab and not personalExists then return end
    local rank = tonumber(safeAAValue(personal, 'Rank', 0)) or 0
    local maxRank = tonumber(safeAAValue(personal, 'MaxRank', 0)) or 0
    if maxRank <= 0 then maxRank = tonumber(safeAAValue(global, 'MaxRank', 0)) or 0 end
    local aaType = tonumber(safeAAValue(personal, 'Type', 0)) or 0
    if aaType <= 0 then aaType = tonumber(safeAAValue(global, 'Type', 0)) or 0 end
    if aaType <= 0 then aaType = tonumber(forcedTab) or 0 end
    if not TAB_NAMES[aaType] then return end

    local id = tonumber(safeAAValue(personal, 'ID', 0)) or 0
    if id <= 0 then id = tonumber(safeAAValue(global, 'ID', 0)) or 0 end
    local cost = tonumber(safeAAValue(personal, 'Cost', 0)) or 0
    if cost <= 0 then cost = tonumber(safeAAValue(global, 'Cost', 0)) or 0 end
    local canTrain = safeAAValue(personal, 'CanTrain', false) == true
    if not canTrain then canTrain = safeAAValue(global, 'CanTrain', false) == true end

    if id <= 0 and maxRank <= 0 and rank <= 0 and cost <= 0 and not canTrain then return end

    local entry = {
        name = name,
        tab = aaType,
        rank = rank,
        maxRank = maxRank,
        cost = cost,
        canTrain = canTrain,
        maxed = maxRank > 0 and rank >= maxRank,
    }
    state.catalog[#state.catalog + 1] = entry
    state.catalogByName[name:lower()] = entry
end

local function getAAWindow()
    for _, windowName in ipairs({ 'AAWindow', 'AAWnd', 'AltAdvWnd', 'AltAdvWindow', 'AlternateAdvancementWindow' }) do
        local window
        local ok = pcall(function() window = mq.TLO.Window(windowName) end)
        if ok and window and window() then return window, windowName end
    end
    return nil, nil
end

local function scanAAListControl(control, forcedTab, stats)
    if not control or not control() then return end
    local count = 0
    pcall(function() count = tonumber(control.Items() or 0) or 0 end)
    if count <= 0 or count > 1000 then return end

    stats.listControls = stats.listControls + 1
    stats.rows = stats.rows + count
    for row = 1, count do
        local foundCell = false
        -- Column 1 is the AA title on Project Triune. Reading the other columns
        -- makes this tolerant of custom UI layouts that shift the title column;
        -- non-AA values are discarded by recordAA().
        for column = 1, 5 do
            local value
            pcall(function() value = control.List(row, column)() end)
            if value and value ~= '' and value ~= 'NULL' then
                stats.cells = stats.cells + 1
                foundCell = true
                recordAA(value, forcedTab)
            end
        end
        if not foundCell then
            local value
            pcall(function() value = control.List(row)() end)
            if value and value ~= '' and value ~= 'NULL' then
                stats.cells = stats.cells + 1
                recordAA(value, forcedTab)
            end
        end
    end
end

local function walkAAWindowControls(node, stats, depth, visited)
    if not node or not node() or depth > 18 or visited.count > 750 then return end
    scanAAListControl(node, 1, stats)

    local child
    local ok = pcall(function() child = node.FirstChild end)
    if not ok or not child or not child() then return end
    while child and child() and visited.count <= 750 do
        visited.count = visited.count + 1
        walkAAWindowControls(child, stats, depth + 1, visited)
        local nextChild
        local nextOK = pcall(function() nextChild = child.Next end)
        if not nextOK or not nextChild or not nextChild() then break end
        child = nextChild
    end
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

    local stats = { window = windowName or 'none', listControls = 0, rows = 0, cells = 0, controls = 0 }
    pcall(function()
        if not window or not window() then return end
        local lists = {
            [1] = { 'List1', 'AAW_GeneralList', 'AA_GeneralList', 'GeneralList' },
            [2] = { 'List2', 'AAW_ArchetypeList', 'AA_ArchetypeList', 'ArchetypeList' },
            [3] = { 'List3', 'AAW_ClassList', 'AA_ClassList', 'ClassList' },
        }
        for tab, candidates in pairs(lists) do
            for _, childName in ipairs(candidates) do
                local child = window.Child(childName)
                if child and child() then
                    scanAAListControl(child, tab, stats)
                end
            end
        end

        -- Triune and custom EverQuest UIs do not always retain the standard
        -- list-control names. Walk every descendant and let AltAbility lookup
        -- distinguish AA titles from headers, costs, and category strings.
        local visited = { count = 0 }
        walkAAWindowControls(window, stats, 0, visited)
        stats.controls = visited.count
    end)

    state.scanStats = stats

    if not wasOpen then mq.cmd('/windowstate AAWindow close') end
end

local function scanAADatabase()
    -- Early-era and emulator AA IDs are concentrated in this range. The live AA
    -- window scan above remains authoritative for custom Triune entries.
    for id = 1, 2500 do
        local aa = mq.TLO.AltAbility(id)
        local name = safeAAValue(aa, 'Name', nil)
        if name and name ~= '' then recordAA(name) end
        if id % 250 == 0 then mq.delay(1) end
    end
end

local function refreshCatalog()
    state.catalog = {}
    state.catalogByName = {}
    setStatus('Scanning the current character\'s AA catalog...', 'info')
    scanAAWindow()
    scanAADatabase()
    for _, entry in ipairs(state.plan) do recordAA(entry.name, entry.tab) end
    table.sort(state.catalog, function(a, b)
        if a.tab ~= b.tab then return a.tab < b.tab end
        return a.name:lower() < b.name:lower()
    end)
    setStatus(string.format('Found %d AAs. AA window: %s; %d list rows inspected.',
            #state.catalog, state.scanStats.window or 'none', state.scanStats.rows or 0),
        #state.catalog > 0 and 'good' or 'warn')
end

local function planContains(name)
    for i, entry in ipairs(state.plan) do
        if entry.name:lower() == name:lower() then return i end
    end
    return nil
end

local function addToPlan(aa)
    if planContains(aa.name) then
        setStatus(aa.name .. ' is already in the priority list.', 'warn')
        return
    end
    local target = aa.maxRank > 0 and tostring(aa.maxRank) or 'M'
    state.plan[#state.plan + 1] = { name = aa.name, rank = target, tab = aa.tab }
    markPlanDirty()
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
    local lines = { 'AAPLANNER1' }
    for _, entry in ipairs(state.plan) do
        lines[#lines + 1] = table.concat({ encodeField(entry.name), entry.rank, TAB_NAMES[entry.tab] or '' }, '|')
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
    local plannerFormat = text:match('^%s*AAPLANNER1%s*\n') ~= nil
    local lineNumber = 0
    for line in text:gmatch('[^\n]+') do
        lineNumber = lineNumber + 1
        line = trim(line)
        if line ~= '' and line ~= 'AAPLANNER1' and not line:match('^%[.-%]$') and not line:match('^[;#]') then
            local name, rank, tabName
            if plannerFormat then
                name, rank, tabName = line:match('^(.-)|([^|]+)|([^|]*)$')
                if name then name = decodeField(name) end
            else
                name, rank = line:match('^%d+%s*=%s*(.-)|([^|]+)$')
                if not name then name, rank = line:match('^(.-)|([^|]+)$') end
            end
            name = trim(name)
            rank = validateRank(rank)
            if not name or name == '' or not rank then
                return nil, string.format('Invalid entry on import line %d.', lineNumber)
            end
            local key = name:lower()
            if seen[key] then return nil, 'Duplicate AA in import: ' .. name end
            seen[key] = true
            local catalogAA = state.catalogByName[key]
            local tab = TAB_IDS[trim(tabName)] or (catalogAA and catalogAA.tab) or 0
            imported[#imported + 1] = { name = name, rank = rank, tab = tab }
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

local function appendSupportLog(line)
    local path = getDebugLogPath()
    if not path then return false end

    local file = io.open(path, 'ab')
    if not file then return false end

    file:write(string.format('[%s] %s\r\n', os.date('%Y-%m-%d %H:%M:%S'), tostring(line)))
    file:close()
    return true
end

local function writePrioritySnapshot(reason)
    recalculatePlannerStats()

    appendSupportLog(string.format(
        '[PTAAPlanner] Priority snapshot (%s) Version=%s Entries=%d AAPoints=%d QueueCost=%d QueueCostComplete=%s AutoSpend=%s ConsumeExperience=%s ConsumeThreshold=%d',
        tostring(reason or 'update'), VERSION, #state.plan, tonumber(state.aaPoints or 0),
        tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
        tostring(state.autoSpendEnabled), tostring(state.consumeExperience),
        tonumber(state.consumeExperienceThreshold or 100)))

    if #state.plan == 0 then
        appendSupportLog('[PTAAPlanner] Priority list is empty.')
        return
    end

    for i, entry in ipairs(state.plan) do
        local currentRank, maxRank, nextCost = getAAProgress(entry.name)
        local target = getEntryTarget(entry, maxRank)
        local remainingCost, resolved = remainingCostForEntry(entry)
        appendSupportLog(string.format(
            '[PTAAPlanner] #%d %s | Target=%s | Current=%d/%d | NextCost=%d | RemainingCost=%d | CostResolved=%s',
            i, tostring(entry.name), tostring(entry.rank), tonumber(currentRank or 0),
            tonumber(maxRank or 0), tonumber(nextCost or 0), tonumber(remainingCost or 0),
            tostring(resolved)))

        if not resolved then
            appendSupportLog(string.format(
                '[PTAAPlanner] COST DEBUG %s | Group=%d | Future rank costs unavailable until each preceding rank is purchased',
                tostring(entry.name),
                tonumber(safeAAValue(mq.TLO.AltAbility(entry.name), 'GroupID', 0)) or 0))
        end
    end
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

local function findAAWindowRow(targetName, preferredTab)
    local window = getAAWindow()
    if not window then return nil end
    local wanted = normalizeAAName(targetName)
    local tabs = { preferredTab }
    for tab = 1, 3 do if tab ~= preferredTab then tabs[#tabs + 1] = tab end end

    for _, tab in ipairs(tabs) do
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
                        return controlName, row, tab, control
                    end
                end
            end
        end
    end
    return nil
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
    for _, entry in ipairs(state.plan) do
        local rank, maxRank, cost = getAAProgress(entry.name)
        local target = getEntryTarget(entry, maxRank)
        if target <= 0 then return entry, rank, maxRank, cost, 'target rank could not be resolved' end
        if rank < target then return entry, rank, maxRank, cost end
    end
    return nil
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
        kind = 'aa', name = entry.name, tab = tonumber(entry.tab) or 1,
        rankBefore = tonumber(rank) or 0, pointsBefore = getCurrentAAPoints(),
        cost = tonumber(cost) or 0, step = 'open', retries = 0,
        openedByUs = false, manual = manual == true,
        startedAt = monotonicSeconds(), nextStepAt = monotonicSeconds(),
    }
    setStatus(string.format('Purchasing %s rank %d for %d AA...', entry.name, rank + 1, cost), 'info')
end

local function startConsumeExperience(manual)
    local points = getCurrentAAPoints()
    state.pendingPurchase = {
        kind = 'consume', name = 'Consume Experience', pointsBefore = points,
        step = 'activate', manual = manual == true, startedAt = monotonicSeconds(), nextStepAt = monotonicSeconds(),
    }
    setStatus(string.format('Activating Consume Experience with %d AA points...', points), 'info')
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
    local entry, rank, maxRank, cost, resolveError = nextIncompleteEntry()
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
            stopAutoSpend(string.format('Cannot purchase %s rank %d: prerequisites or level requirements are not met. Auto Spend has been disabled.',
                entry.name, rank + 1), 'error')
            appendSupportLog(string.format('[PTAAPlanner] BLOCKED %s rank %d: CanTrain=false, AAPoints=%d, Cost=%d, MaxRank=%d',
                entry.name, rank + 1, state.aaPoints, cost, maxRank))
            return false
        end
        startNativePurchase(entry, rank, cost, manual)
        return true
    end

    local threshold = math.max(1, math.floor(tonumber(state.consumeExperienceThreshold) or 100))
    if state.consumeExperience and state.aaPoints >= threshold then
        startConsumeExperience(manual)
        return true
    end
    return false
end

local function finishPurchaseSuccess(task, rankAfter, pointsAfter)
    if task.kind == 'aa' then
        setStatus(string.format('Purchased %s rank %d. %d AA points remain.', task.name, rankAfter, pointsAfter), 'good', 6)
        appendSupportLog(string.format('[PTAAPlanner] PURCHASED %s rank %d; points %d -> %d',
            task.name, rankAfter, task.pointsBefore, pointsAfter))
        pruneCompletedPlan()
    else
        setStatus(string.format('Consume Experience activated. AA points changed from %d to %d.', task.pointsBefore, pointsAfter), 'good', 6)
        appendSupportLog(string.format('[PTAAPlanner] CONSUME EXPERIENCE points %d -> %d', task.pointsBefore, pointsAfter))
    end
    state.pendingPurchase = nil
    state.nextSpendAt = monotonicSeconds() + 0.75
    recalculatePlannerStats()
end

local function processNativePurchase()
    local task = state.pendingPurchase
    if not task then return end
    local now = monotonicSeconds()
    if now < (task.nextStepAt or 0) then return end

    local busy = playerBusyReason()
    if busy then
        if task.openedByUs then closeAAWindow() end
        if task.manual then state.manualSpendQueued = true end
        state.pendingPurchase = nil
        state.nextSpendAt = now + 2
        return
    end

    if task.kind == 'consume' then
        if task.step == 'activate' then
            mq.cmd('/alt activate 17789')
            task.step = 'verify'
            task.nextStepAt = now + 0.5
            return
        end
        local pointsAfter = getCurrentAAPoints()
        if pointsAfter < task.pointsBefore then
            finishPurchaseSuccess(task, 0, pointsAfter)
        elseif now - task.startedAt > 6 then
            state.pendingPurchase = nil
            state.nextSpendAt = now + 30
            setStatus('Consume Experience did not activate. Verify the ability is available and a valid item is equipped in the power source slot.', 'error')
        else
            task.nextStepAt = now + 0.25
        end
        return
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
        local controlName, row, foundTab, control = findAAWindowRow(task.name, task.tab)
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
        local controlName, row, foundTab = findAAWindowRow(task.name, task.tab)
        if not controlName or foundTab ~= task.tab or row ~= task.selectedRow then
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend('The selected AA row changed before training. No purchase was attempted; Auto Spend has been disabled.', 'error')
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
        local rankAfter = select(1, getAAProgress(task.name))
        local pointsAfter = getCurrentAAPoints()
        if rankAfter > task.rankBefore or pointsAfter < task.pointsBefore then
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
        local rankAfter = select(1, getAAProgress(task.name))
        local pointsAfter = getCurrentAAPoints()
        if rankAfter > task.rankBefore or pointsAfter < task.pointsBefore then
            if task.openedByUs then closeAAWindow() end
            finishPurchaseSuccess(task, rankAfter, pointsAfter)
        elseif now - (task.clickedAt or task.startedAt) > 6 then
            if task.openedByUs then closeAAWindow() end
            stopAutoSpend(string.format('Purchase of %s rank %d was not confirmed. Check its prerequisites and level requirements, then re-enable Auto Spend.',
                task.name, task.rankBefore + 1), 'error')
            appendSupportLog(string.format('[PTAAPlanner] PURCHASE TIMEOUT %s rank %d; points remained %d',
                task.name, task.rankBefore + 1, pointsAfter))
        else
            task.nextStepAt = now + 0.25
        end
    end
end

local function enableAutoSpend()
    if #state.plan == 0 and not state.consumeExperience then
        setStatus('The priority list is empty and Consume Experience is disabled.', 'warn')
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

local function drawClassSelectors()
    ImGui.Text('Classes:')
    for slot = 1, 3 do
        if slot > 1 then ImGui.SameLine() end
        ImGui.SetNextItemWidth(125)
        local currentIndex = 1
        for i, cls in ipairs(CLASS_ABBR) do if cls == state.classes[slot] then currentIndex = i break end end
        local newIndex = ImGui.Combo('##class' .. slot, currentIndex, CLASS_ABBR)
        if newIndex ~= currentIndex then
            state.classes[slot] = CLASS_ABBR[newIndex]
            state.classDetected = false
            markDirty()
        end
    end
    ImGui.SameLine()
    if ImGui.Button('Re-detect') then state.detectRequested = true end
    ImGui.SameLine()
    if state.classDetected then ImGui.TextColored(0.35, 0.9, 0.55, 1, 'Detected')
    else ImGui.TextColored(1, 0.72, 0.3, 1, 'Manual') end
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
                ImGui.PushID('catalog_' .. aa.name)
                local rankText = aa.maxRank > 0 and string.format('%d/%d', aa.rank, aa.maxRank) or tostring(aa.rank)
                if ImGui.Button(planContains(aa.name) and 'Added' or 'Add', 52, 0) and not planContains(aa.name) then addToPlan(aa) end
                ImGui.SameLine()
                if aa.maxed then ImGui.TextColored(0.35, 0.9, 0.55, 1, aa.name)
                else ImGui.Text(aa.name) end
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

    local nextCost, nextName, nextRank, nextTarget = getTopPriorityCost()
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
        ImGui.TextDisabled('Next Purchase: none')
        ImGui.TextDisabled('Cost: 0 AA')
    end

	local consumeEnabled = ImGui.Checkbox('Use Consume Experience after priority list', state.consumeExperience)
	if consumeEnabled ~= state.consumeExperience then
		state.consumeExperience = consumeEnabled
		markPlanDirty()
	end
	if ImGui.IsItemHovered() then
		ImGui.SetTooltip('%s', 'When the priority list is empty or complete, activate Consume Experience at the selected AA threshold.')
	end

	ImGui.SetNextItemWidth(95)
	local consumeThreshold = ImGui.InputInt('Consume trigger##consumeThreshold',
		math.max(1, math.floor(tonumber(state.consumeExperienceThreshold) or 100)), 1, 10)
	consumeThreshold = math.max(1, math.floor(tonumber(consumeThreshold) or 100))
	if consumeThreshold ~= state.consumeExperienceThreshold then
		state.consumeExperienceThreshold = consumeThreshold
		markPlanDirty()
	end
	if ImGui.IsItemHovered() then
		ImGui.SetTooltip('%s', 'Number of unspent AA points required before Consume Experience activates.')
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
            ImGui.PushID('plan_' .. i .. '_' .. entry.name)
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
            ImGui.Text(string.format('%s  [%s]', entry.name, tabLabel))
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
        if name == '' then setStatus('Enter a name before saving.', 'warn')
        else
            state.savedLists[name] = copyPlan(state.plan)
            state.selectedSaved = name
            writeSavedData()
            setStatus('Saved list: ' .. name, 'good')
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
            state.savedLists[state.selectedSaved] = nil
            state.selectedSaved = ''
            writeSavedData()
            setStatus('Deleted the saved list.', 'info')
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
        local nextCost, nextName, nextRank, target = getTopPriorityCost()

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
            ImGui.TextDisabled('Priority list complete.')
        end

		if state.consumeExperience then
			ImGui.Text(string.format('Consume Experience: On at %d AA',
				math.max(1, math.floor(tonumber(state.consumeExperienceThreshold) or 100))))
		else
			ImGui.TextDisabled('Consume Experience: Off')
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
                if ImGui.MenuItem('Save working list') then writeSavedData(); setStatus('Working list saved.', 'good') end
                if ImGui.MenuItem('Import / Export') then state.showTransfer = true end
                if ImGui.MenuItem('Close') then open = false end
                ImGui.EndMenu()
            end
            if ImGui.MenuItem('Compact Mode') then
                setCompactMode(true)
            end
            ImGui.EndMenuBar()
        end

        drawClassSelectors()
        ImGui.Separator()
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

mq.bind('/aaplanner', function(command)
    command = trim(command):lower()
    if command == 'quit' or command == 'exit' then open = false
    elseif command == 'refresh' then state.scanRequested = true
    elseif command == 'debug' then
        recalculatePlannerStats()
        local counts = { 0, 0, 0 }
        for _, aa in ipairs(state.catalog) do
            if counts[aa.tab] then counts[aa.tab] = counts[aa.tab] + 1 end
        end
        print(string.format('\at[AA Planner Debug]\ax Version=%s Classes=%s Detected=%s',
            VERSION, table.concat(state.classes, '/'), tostring(state.classDetected)))
        print(string.format('\at[AA Planner Debug]\ax General=%d Archetype=%d Class=%d Plan=%d NativeAutoSpend=%s',
            counts[1], counts[2], counts[3], #state.plan, tostring(state.autoSpendEnabled)))
        print(string.format('\at[AA Planner Debug]\ax AAWindow=%s Controls=%d Lists=%d Rows=%d Cells=%d',
            tostring(state.scanStats.window), tonumber(state.scanStats.controls or 0),
            tonumber(state.scanStats.listControls or 0), tonumber(state.scanStats.rows or 0),
            tonumber(state.scanStats.cells or 0)))
        print(string.format('\at[AA Planner Debug]\ax ConfigDir=%s SaveFile=%s',
            tostring(configDir), tostring(saveFile)))
		print(string.format('\at[AA Planner Debug]\ax AAPoints=%d QueueCost=%d QueueCostComplete=%s AutoManage=%s ConsumeExperience=%s ConsumeThreshold=%d Pending=%s ManualQueued=%s',
			tonumber(state.aaPoints or 0), tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
			tostring(state.autoManageActive), tostring(state.consumeExperience),
            tonumber(state.consumeExperienceThreshold or 100),
            state.pendingPurchase and tostring(state.pendingPurchase.name) or 'none',
            tostring(state.manualSpendQueued)))
        print(string.format('\at[AA Planner Debug]\ax SafetyChecks Casting=%s Moving=%s Navigating=%s Combat=%s AutoFire=%s XTargets=%s',
            tostring(state.safetyCheckCasting), tostring(state.safetyCheckMoving), tostring(state.safetyCheckNavigating),
            tostring(state.safetyCheckCombat), tostring(state.safetyCheckAutofire), tostring(state.safetyCheckXTargets)))
        writePrioritySnapshot('/aaplanner debug')
        print(string.format('\at[AA Planner Debug]\ax Priority snapshot appended to %s',
            tostring(getDebugLogPath() or 'debug log unavailable')))
    elseif command == 'compact' then
        open = true
        setCompactMode(true)
    elseif command == 'full' then
        open = true
        setCompactMode(false)
    elseif command == 'show' or command == '' then open = true
    else print('\at[AA Planner]\ax /aaplanner [show|compact|full|refresh|debug|quit]') end
end)

mq.imgui.init('AAPlanner', drawMainWindow)

while open do
    clearExpiredStatus()
    if state.detectRequested then state.detectRequested = false; detectClasses() end
    if state.scanRequested then state.scanRequested = false; refreshCatalog() end
    if state.enableRequested then state.enableRequested = false; enableAutoSpend() end

    processNativePurchase()

    local now = os.time()
    if now ~= state.maintenanceAt then
        state.maintenanceAt = now
        pruneCompletedPlan()
        recalculatePlannerStats()

        if not state.pendingPurchase and monotonicSeconds() >= (state.nextSpendAt or 0) then
            if state.manualSpendQueued then
                requestSpendPass(true)
            elseif state.autoSpendEnabled then
                requestSpendPass(false)
            end
        end
    end

    if state.dirty then
        -- Debouncing is unnecessary at this scale; persisting here protects the
        -- working list if EQ or MacroQuest closes unexpectedly.
        writeSavedData()
    end
    mq.delay(50)
end

writeSavedData()
mq.unbind('/aaplanner')
print('\at[AA Planner]\ax Stopped.')
