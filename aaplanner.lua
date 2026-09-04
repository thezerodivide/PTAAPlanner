---@diagnostic disable: undefined-global, undefined-field

-- AA Planner for Project Triune / MacroQuest
-- Standalone ImGui planner and MQ2AASpend list writer.
-- Run with: /lua run aaplanner

local mq = require('mq')
local ImGui = require('ImGui')

local APP_NAME = 'Project Triune AA Planner'
local VERSION = '0.1.3'
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
    scanRequested = true,
    detectRequested = true,
    applyRequested = false,
    enableRequested = false,
    dirty = false,
    planApplied = false,
    autoManageActive = false,
    aaPoints = 0,
    queueCost = 0,
    queueCostComplete = true,
    bankTarget = 0,
    maintenanceAt = 0,
    syncRequested = false,
    scanStats = { window = 'none', listControls = 0, rows = 0, cells = 0 },
}

local function trim(value)
    return tostring(value or ''):match('^%s*(.-)%s*$') or ''
end

local function setStatus(message, kind)
    state.status = tostring(message or '')
    state.statusKind = kind or 'info'
    print(string.format('\at[AA Planner]\ax %s', state.status))
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
    file:write('  },\n  lists = {\n')
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
    state.planApplied = false
    state.autoManageActive = false
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

local aaCostCache = {
    path = nil,
    mtime = nil,
    loadedAt = 0,
    entries = {},
}

local function getAACostCachePath()
    local character = trim(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '')
    local server = ''
    pcall(function() server = trim(mq.TLO.MacroQuest.Server() or '') end)
    if server == '' then pcall(function() server = trim(mq.parse('${MacroQuest.Server}')) end) end
    if character == '' or server == '' or server == 'NULL' then return nil end
    local separator = configDir:sub(-1) == '\\' or configDir:sub(-1) == '/'
    if separator then
        return configDir .. string.format('MQ2AASpend_%s_%s_costs.txt', server, character)
    end
    return configDir .. '\\' .. string.format('MQ2AASpend_%s_%s_costs.txt', server, character)
end

local function loadAACostCache(force)
    local path = getAACostCachePath()
    if not path then return end

    local now = os.time()
    if not force and aaCostCache.path == path and (now - aaCostCache.loadedAt) < 2 then
        return
    end

    aaCostCache.path = path
    aaCostCache.loadedAt = now
    aaCostCache.entries = {}

    local file = io.open(path, 'rb')
    if not file then return end

    for line in file:lines() do
        if line:sub(1, 1) ~= '#' then
            local name, encoded = line:match('^(.-)|(.*)$')
            if name and encoded then
                local costs = {}
                for rank, cost in encoded:gmatch('(%d+)=(-?%d+)') do
                    costs[tonumber(rank)] = tonumber(cost)
                end
                aaCostCache.entries[name] = costs
            end
        end
    end

    file:close()
end

local function refreshAACostCache()
    local loaded = false
    pcall(function()
        loaded = mq.TLO.Plugin('MQ2AASpend').IsLoaded()
    end)

    if loaded then
        mq.cmd('/aaspend costcache')
        mq.delay(150)
    end

    loadAACostCache(true)
end

local function getRankCostMap(name)
    loadAACostCache(false)

    local cached = aaCostCache.entries[name]
    if cached then
        local copy = {}
        for rank, cost in pairs(cached) do copy[rank] = cost end
        return copy
    end

    -- Fallback for a missing/stale cache: at least preserve the rank/cost
    -- currently exposed by the Lua TLO. The UI will explicitly mark totals
    -- unresolved rather than pretending this is a complete multi-rank total.
    local costs = {}
    local ability = mq.TLO.AltAbility(name)
    local rank = tonumber(safeAAValue(ability, 'Rank', 0)) or 0
    local cost = tonumber(safeAAValue(ability, 'Cost', 0)) or 0
    if rank > 0 then costs[rank] = cost end
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
        if state.autoManageActive then state.syncRequested = true end
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
    for _, windowName in ipairs({ 'AAWindow', 'AltAdvWnd', 'AltAdvWindow', 'AlternateAdvancementWindow' }) do
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

local function exportINISection()
    local lines = { '[MQ2AASpend_AAList]' }
    for i, entry in ipairs(state.plan) do
        lines[#lines + 1] = string.format('%d=%s|%s', i - 1, entry.name, entry.rank)
    end
    return table.concat(lines, '\r\n') .. '\r\n'
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

local function pluginLoaded()
    local loaded = false
    pcall(function()
        local plugin = mq.TLO.Plugin('MQ2AASpend')
        loaded = plugin and plugin() and plugin.IsLoaded() == true
    end)
    return loaded
end

local function pathJoin(base, leaf)
    local sep = base:find('\\', 1, true) and '\\' or '/'
    if base:sub(-1) == '/' or base:sub(-1) == '\\' then return base .. leaf end
    return base .. sep .. leaf
end

local function getCharacterINIPath()
    local character = trim(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '')
    local server = ''
    pcall(function() server = trim(mq.TLO.MacroQuest.Server() or '') end)
    if server == '' then pcall(function() server = trim(mq.parse('${MacroQuest.Server}')) end) end
    if character == '' or server == '' or server == 'NULL' then
        return nil, 'Could not determine the current server and character name.'
    end
    return pathJoin(configDir, server .. '_' .. character .. '.ini')
end

local function getDebugLogPath()
    local character = trim(mq.TLO.Me.CleanName() or mq.TLO.Me.Name() or '')
    local server = ''
    pcall(function() server = trim(mq.TLO.MacroQuest.Server() or '') end)
    if server == '' then pcall(function() server = trim(mq.parse('${MacroQuest.Server}')) end) end
    if character == '' or server == '' or server == 'NULL' then return nil end
    return pathJoin(configDir, string.format('MQ2AASpend_%s_%s_debug.log', server, character))
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

    local iniPath = select(1, getCharacterINIPath()) or 'unknown'
    appendSupportLog(string.format(
        '[PTAAPlanner] Priority snapshot (%s) Version=%s Entries=%d AAPoints=%d QueueCost=%d QueueCostComplete=%s DynamicBank=%d INI=%s',
        tostring(reason or 'update'), VERSION, #state.plan, tonumber(state.aaPoints or 0),
        tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
        tonumber(state.bankTarget or 0), tostring(iniPath)))

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
            local rankCosts = getRankCostMap(entry.name)
            local parts = {}
            for rank = 1, tonumber(maxRank or 0) do
                if rankCosts[rank] ~= nil then
                    parts[#parts + 1] = string.format('R%d=%d', rank, rankCosts[rank])
                end
            end
            local cachePresent = aaCostCache.entries[entry.name] ~= nil
            appendSupportLog(string.format(
                '[PTAAPlanner] COST DEBUG %s | Group=%d | CachePresent=%s | KnownRankCosts=%s',
                tostring(entry.name),
                tonumber(safeAAValue(mq.TLO.AltAbility(entry.name), 'GroupID', 0)) or 0,
                tostring(cachePresent),
                #parts > 0 and table.concat(parts, ',') or 'none'))
        end
    end
end

local function readFile(path)
    local file = io.open(path, 'rb')
    if not file then return '' end
    local content = file:read('*a') or ''
    file:close()
    return content
end

local function writeFile(path, content)
    local file, err = io.open(path, 'wb')
    if not file then return false, err end
    local ok, writeErr = file:write(content)
    file:close()
    if not ok then return false, writeErr end
    return true
end

local function replaceINISection(content, sectionName, replacement)
    local newline = content:find('\r\n', 1, true) and '\r\n' or '\n'
    replacement = replacement:gsub('\r\n', '\n'):gsub('\n', newline)
    local lines = {}
    local inTarget = false
    local inserted = false
    content = content:gsub('\r\n', '\n')
    for line in (content .. '\n'):gmatch('(.-)\n') do
        local section = line:match('^%s*%[([^%]]+)%]%s*$')
        if section then
            if inTarget and not inserted then
                lines[#lines + 1] = replacement:gsub('[\r\n]+$', '')
                inserted = true
            end
            inTarget = section:lower() == sectionName:lower()
            if not inTarget then lines[#lines + 1] = line end
        elseif not inTarget then
            lines[#lines + 1] = line
        end
    end
    if not inserted then
        if #lines > 0 and lines[#lines] ~= '' then lines[#lines + 1] = '' end
        lines[#lines + 1] = replacement:gsub('[\r\n]+$', '')
    end
    local result = table.concat(lines, newline)
    result = result:gsub(newline .. newline .. newline .. '+', newline .. newline)
    return result .. newline
end


local function syncDynamicBank(force)
    if not pluginLoaded() or not state.autoManageActive then return end
    local cost, name = getTopPriorityCost()
    cost = math.max(0, math.floor(tonumber(cost) or 0))
    if force or cost ~= state.bankTarget then
        mq.cmd(string.format('/aaspend bank %d', cost))
        state.bankTarget = cost
        if name then
            print(string.format('\at[AA Planner]\ax Dynamic bank set to %d AA for next priority: %s.', cost, name))
        else
            print('\at[AA Planner]\ax Priority list complete; dynamic bank reset to 0.')
        end
    end
end

local function applyPlanToINI(createBackup, announce, allowEmpty)
    refreshAACostCache()
    if #state.plan == 0 and not allowEmpty then
        setStatus('The priority list is empty; nothing was written.', 'warn')
        return false
    end

    if createBackup == nil then createBackup = true end
    if announce == nil then announce = true end

    if pluginLoaded() then
        mq.cmd('/aaspend save')
        mq.delay(150)
    end

    local path, pathErr = getCharacterINIPath()
    if not path then
        if announce then setStatus(pathErr, 'error') end
        return false
    end

    local original = readFile(path)
    if createBackup and original ~= '' then
        local stamp = os.date('%Y%m%d_%H%M%S')
        local backupPath = path .. '.aaplanner_backup_' .. stamp
        local backupOK, backupErr = writeFile(backupPath, original)
        if not backupOK then
            if announce then setStatus('Could not create the safety backup: ' .. tostring(backupErr), 'error') end
            return false
        end
    end

    local updated = replaceINISection(original, 'MQ2AASpend_AAList', exportINISection())
    local ok, err = writeFile(path, updated)
    if not ok then
        if announce then setStatus('Could not write MQ2AASpend list: ' .. tostring(err), 'error') end
        return false
    end

    state.planApplied = true
    state.autoManageActive = true

    -- Always refresh the plugin after writing so its in-memory priority list
    -- immediately matches the file PTAAPlanner just changed.
    if pluginLoaded() then
        mq.cmd('/aaspend load')
        mq.delay(150)
        syncDynamicBank(true)
    end

    writePrioritySnapshot(createBackup and 'manual list write' or 'automatic priority update')

    if announce then
        setStatus(string.format('Wrote %d prioritized AAs to %s. Other INI sections were preserved.', #state.plan, path), 'good')
    end
    return true
end

local function enableAutoSpend()
    if not pluginLoaded() then
        setStatus('Loading MQ2AASpend...', 'info')
        mq.cmd('/plugin mq2aaspend load')
        mq.delay(1500, pluginLoaded)
    end
    if not pluginLoaded() then
        setStatus('MQ2AASpend did not load. Confirm MQ2AASpend.dll is installed.', 'error')
        return
    end

    mq.cmd('/aaspend load')
    mq.delay(150)
    state.autoManageActive = true

    -- Enable Auto Spend first. The Triune MQ2AASpend build will immediately
    -- schedule a purchase pass if the dynamic bank threshold is already met.
    mq.cmd('/aaspend auto on')
    mq.delay(100)
    syncDynamicBank(true)
    writePrioritySnapshot('auto spend enabled')

    setStatus('MQ2AASpend loaded the list, Auto Spend was enabled, and dynamic banking was updated.', 'good')
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
    if state.autoManageActive then
        ImGui.TextDisabled(string.format('Dynamic Bank: %d', state.bankTarget or 0))
    end
    ImGui.Separator()
    if ImGui.BeginChild('priority_list', 0, 390, true) then
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

    if ImGui.Button('Write MQ2AASpend List', 190, 32) then state.applyRequested = true end
    ImGui.SameLine()
    if ImGui.Button('Enable Auto Spend', 170, 32) then state.enableRequested = true end
    ImGui.SameLine()
    ImGui.TextDisabled(pluginLoaded() and 'MQ2AASpend: loaded' or 'MQ2AASpend: not loaded')
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
    ImGui.SameLine()
    if ImGui.Button('Copy MQ2AASpend INI') then
        pcall(ImGui.SetClipboardText, exportINISection())
        setStatus('Copied the MQ2AASpend INI section to the clipboard.', 'good')
    end
end

local function drawTransferWindow()
    if not state.showTransfer then return end
    local visible
    state.showTransfer, visible = ImGui.Begin('AA Planner Import / Export', state.showTransfer)
    if visible then
        ImGui.TextWrapped('Paste either an AAPLANNER1 export or MQ2AASpend Name|Rank entries. Import replaces the current working list.')
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

local function drawMainWindow()
    local visible
    ImGui.SetNextWindowSize(1050, 720, ImGuiCond.FirstUseEver)
    open, visible = ImGui.Begin(APP_NAME .. ' v' .. VERSION, open, ImGuiWindowFlags.MenuBar)
    if visible then
        if ImGui.BeginMenuBar() then
            if ImGui.BeginMenu('File') then
                if ImGui.MenuItem('Save working list') then writeSavedData(); setStatus('Working list saved.', 'good') end
                if ImGui.MenuItem('Import / Export') then state.showTransfer = true end
                if ImGui.MenuItem('Close') then open = false end
                ImGui.EndMenu()
            end
            ImGui.EndMenuBar()
        end

        drawClassSelectors()
        ImGui.Separator()
        if state.statusKind == 'error' then ImGui.TextColored(1, 0.35, 0.35, 1, state.status)
        elseif state.statusKind == 'warn' then ImGui.TextColored(1, 0.72, 0.3, 1, state.status)
        elseif state.statusKind == 'good' then ImGui.TextColored(0.35, 0.9, 0.55, 1, state.status)
        else ImGui.TextWrapped(state.status) end
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
refreshAACostCache()
recalculatePlannerStats()

mq.bind('/aaplanner', function(command)
    command = trim(command):lower()
    if command == 'quit' or command == 'exit' then open = false
    elseif command == 'refresh' then refreshAACostCache(); state.scanRequested = true
    elseif command == 'debug' then
        refreshAACostCache()
        recalculatePlannerStats()
        local counts = { 0, 0, 0 }
        for _, aa in ipairs(state.catalog) do
            if counts[aa.tab] then counts[aa.tab] = counts[aa.tab] + 1 end
        end
        local iniPath, iniErr = getCharacterINIPath()
        print(string.format('\at[AA Planner Debug]\ax Version=%s Classes=%s Detected=%s',
            VERSION, table.concat(state.classes, '/'), tostring(state.classDetected)))
        print(string.format('\at[AA Planner Debug]\ax General=%d Archetype=%d Class=%d Plan=%d PluginLoaded=%s',
            counts[1], counts[2], counts[3], #state.plan, tostring(pluginLoaded())))
        print(string.format('\at[AA Planner Debug]\ax AAWindow=%s Controls=%d Lists=%d Rows=%d Cells=%d',
            tostring(state.scanStats.window), tonumber(state.scanStats.controls or 0),
            tonumber(state.scanStats.listControls or 0), tonumber(state.scanStats.rows or 0),
            tonumber(state.scanStats.cells or 0)))
        print(string.format('\at[AA Planner Debug]\ax ConfigDir=%s INI=%s',
            tostring(configDir), tostring(iniPath or iniErr)))
        print(string.format('\at[AA Planner Debug]\ax AAPoints=%d QueueCost=%d QueueCostComplete=%s DynamicBank=%d AutoManage=%s',
            tonumber(state.aaPoints or 0), tonumber(state.queueCost or 0), tostring(state.queueCostComplete),
            tonumber(state.bankTarget or 0), tostring(state.autoManageActive)))
        writePrioritySnapshot('/aaplanner debug')
        print(string.format('\at[AA Planner Debug]\ax Priority snapshot appended to %s',
            tostring(getDebugLogPath() or 'debug log unavailable')))
    elseif command == 'show' or command == '' then open = true
    else print('\at[AA Planner]\ax /aaplanner [show|refresh|debug|quit]') end
end)

mq.imgui.init('AAPlanner', drawMainWindow)

while open do
    if state.detectRequested then state.detectRequested = false; detectClasses() end
    if state.scanRequested then state.scanRequested = false; refreshCatalog() end
    if state.applyRequested then state.applyRequested = false; applyPlanToINI(true, true, false) end
    if state.enableRequested then state.enableRequested = false; enableAutoSpend() end

    local now = os.time()
    if now ~= state.maintenanceAt then
        state.maintenanceAt = now
        pruneCompletedPlan()
        recalculatePlannerStats()

        if state.syncRequested and state.autoManageActive then
            state.syncRequested = false
            applyPlanToINI(false, false, true)
        elseif state.autoManageActive then
            syncDynamicBank(false)
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
