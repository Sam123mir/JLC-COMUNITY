--[[
      â–ˆâ–ˆâ•—â–ˆâ–ˆâ•—      â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—     â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—
      â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•”â• â• â• â• â•      â–ˆâ–ˆâ•”â• â• â• â• â• â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘â•šâ• â• â–ˆâ–ˆâ•”â• â• â• â–ˆâ–ˆâ•”â• â• â• â• â• 
      â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘          â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  
 â–ˆâ–ˆ   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ•‘          â•šâ• â• â• â• â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•”â• â• â•   
 â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â• â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—     â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â• â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—
  â•šâ• â• â• â• â•  â•šâ• â• â• â• â• â• â•  â•šâ• â• â• â• â• â•      â•šâ• â• â• â• â• â• â•  â•šâ• â• â• â• â• â•  â•šâ• â•    â•šâ• â•    â•šâ• â• â• â• â• â• â• 
                                                                   
 ====================================================================================================
 |                               JAILBREAK ENHANCEMENT SUITE (JES)                                  |
 |                                    PREMIUM JLC EDITION v2.0.0                                    |
 ====================================================================================================
 |                                                                                                  |
 |  DEVELOPED BY: Sammir_14 (JLC Lead Developer)                                                     |
 |  TEAM: JLC (Jailbreak Legit Community)                                                            |
 |  ARCHITECTURE: Modular Nexus v3.0 (Hyper-Modular)                                                |
 |  LICENSE: JLC Proprietary - For Personal Use Only                                                 |
 |                                                                                                  |
 ====================================================================================================
]]

local __DARKLUA_BUNDLE_MODULES = {
    cache = {}::any,
}

do
    do
        local function __modImpl()
            local Logger = {}
            local LogHistory = {}
            local LogLimit = 1500
            local JES_SIGNATURES = {
                'jes',
                'jlc',
                'nexus',
                'bootloader',
                'bypass',
                'robberies',
                'aimbot',
                'esp',
                'movement',
                'vehicles',
                'windui',
                'hookmanager',
                'powerplant',
                'casino',
                'jewelry',
                'mansion',
                'museum',
                'tomb',
                'oilrig',
                'bank',
                'diagnostics',
                'loading',
                'ready',
                'initialized',
            }
            local JES_SYMBOLS = {
                '\u{25c6}',
                '\u{2502}',
                '\u{2570}',
                '\u{25c6}',
                '\u{2502}',
                '\u{2570}',
                '\u{25a0}',
                '\u{25b2}',
                '\u{25bc}',
                '\u{2605}',
                '\u{2726}',
                '\u{2714}',
                '\u{2716}',
                '\u{26a0}\u{fe0f}',
                '\u{274c}',
                '\u{1f3b0}',
                '\u{1f511}',
                '\u{1f6e1}\u{fe0f}',
                '\u{1f680}',
                '\u{1f6f8}',
                '\u{23f3}',
                '\u{1f4e1}',
                '\u{26a1}',
            }

            local function IsJESMessage(msg)
                if not msg then
                    return false
                end

                local lowerMsg = tostring(msg):lower()

                for _, sig in ipairs(JES_SIGNATURES)do
                    if lowerMsg:find(sig, 1, true) then
                        return true
                    end
                end
                for _, sym in ipairs(JES_SYMBOLS)do
                    if tostring(msg):find(sym, 1, true) then
                        return true
                    end
                end

                return false
            end

            Logger.ChangeCount = 0

            function Logger.Log(logType, message)
                local msgStr = tostring(message)

                if not IsJESMessage(msgStr) and logType ~= 'SYSTEM' then
                    return
                end

                local timestamp = os.date('%H:%M:%S')
                local entry = {
                    Time = timestamp,
                    Type = logType or 'INFO',
                    Message = msgStr,
                }

                table.insert(LogHistory, entry)

                if #LogHistory > LogLimit then
                    table.remove(LogHistory, 1)
                end

                Logger.ChangeCount = Logger.ChangeCount + 1
            end
            function Logger.Info(msg)
                Logger.Log('INFO', msg)
            end
            function Logger.Warn(msg)
                Logger.Log('WARN', msg)
            end
            function Logger.Error(msg)
                Logger.Log('ERROR', msg)
            end
            function Logger.Success(msg)
                Logger.Log('SUCCESS', msg)
            end
            function Logger.System(msg)
                Logger.Log('SYSTEM', msg)
            end
            function Logger.GetHistory()
                return LogHistory
            end
            function Logger.GetFormatted(typeFilter)
                local text = ''

                for _, log in ipairs(LogHistory)do
                    if not typeFilter or log.Type == typeFilter then
                        text = text .. string.format('[%s] [%s] %s\n', log.Time, log.Type, log.Message)
                    end
                end

                return text
            end
            function Logger.GenerateReport()
                local executorName = identifyexecutor and identifyexecutor() or 'Unknown Executor'
                local systemTime = os.date('%Y-%m-%d %H:%M:%S')
                local report = ''

                report = report .. '==================================================\n'
                report = report .. '         JLC SUITE - NEXUS SESSION REPORT          \n'
                report = report .. '==================================================\n'
                report = report .. 'Generated   : ' .. systemTime .. '\n'
                report = report .. 'Executor    : ' .. executorName .. '\n'
                report = report .. 'Version     : 3.0.0\n'
                report = report .. 'Total Logs  : ' .. tostring(#LogHistory) .. '\n'
                report = report .. '==================================================\n\n'

                for _, log in ipairs(LogHistory)do
                    local typeIndicator = log.Type

                    if log.Type == 'SUCCESS' then
                        typeIndicator = ' OK  '
                    elseif log.Type == 'INFO' then
                        typeIndicator = 'INFO '
                    elseif log.Type == 'WARN' then
                        typeIndicator = 'WARN '
                    elseif log.Type == 'ERROR' then
                        typeIndicator = 'FAIL '
                    elseif log.Type == 'SYSTEM' then
                        typeIndicator = ' SYS '
                    end

                    report = report .. string.format('[%s] [%s] %s\n', log.Time, typeIndicator, log.Message)
                end

                report = report .. '\n==================================================\n'
                report = report .. '               END OF REPORT                       \n'
                report = report .. '==================================================\n'

                return report
            end
            function Logger.Clear()
                table.clear(LogHistory)
                Logger.Log('SYSTEM', 'Logs cleared by user.')
            end

            local oldPrint = print
            local oldWarn = warn

            function Logger.Init()
                _G.print = function(...)
                    local args = {...}
                    local msg = ''

                    for i, v in ipairs(args)do
                        msg = msg .. tostring(v) .. (i < #args and ' ' or '')
                    end

                    if IsJESMessage(msg) then
                        local logType = 'INFO'

                        if msg:find('FOUND') or msg:find('loaded') or msg:find('operational') or msg:find('SUCCESS') or msg:find('READY') then
                            logType = 'SUCCESS'
                        elseif msg:find('MISSING') or msg:find('limited') then
                            logType = 'WARN'
                        elseif msg:find('FAIL') or msg:find('error') then
                            logType = 'ERROR'
                        end

                        Logger.Log(logType, msg)
                    end

                    oldPrint(unpack(args))
                end
                _G.warn = function(...)
                    local args = {...}
                    local msg = ''

                    for i, v in ipairs(args)do
                        msg = msg .. tostring(v) .. (i < #args and ' ' or '')
                    end

                    if IsJESMessage(msg) then
                        Logger.Log('WARN', msg)
                    end

                    oldWarn(unpack(args))
                end

                Logger.Log('SYSTEM', 'Logger system initialized. Filtering only JES script logs.')
            end

            return Logger
        end

        function __DARKLUA_BUNDLE_MODULES.a(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.a

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.a = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                Visuals = {
                    Enabled = false,
                    MaxDistance = 5000,
                    ShowTeam = true,
                    Boxes = true,
                    Health = true,
                    Avatar = true,
                },
                Movement = {
                    DashEnabled = true,
                    DashForce = 120,
                    SprintEnabled = true,
                    DoubleJump = true,
                    Bhop = false,
                    AntiFall = true,
                },
                Combat = {
                    Enabled = false,
                    ToggleKey = Enum.KeyCode.T,
                    TargetPart = 'Head',
                    Accuracy = 100,
                    MaxRange = 600,
                    FreezeNpcs = false,
                },
                Vehicles = {
                    Enabled = false,
                    Speed = 250,
                    Torque = 1,
                    Height = 2,
                    Brakes = 5,
                    TurnSpeed = 1.5,
                    InfiniteNitro = false,
                },
                Robberies = {
                    Enabled = true,
                    InstantInteract = true,
                    AntiKnockback = false,
                    AntiRagdoll = true,
                    GlobalESP = true,
                    Notifications = true,
                    BankBypass = true,
                    CasinoBypass = true,
                    JewelryBypass = true,
                    MuseumBypass = true,
                    MansionBypass = true,
                    OilRigBypass = true,
                    TombBypass = true,
                    CasinoAutoHack = true,
                    CasinoAutoCrack = true,
                    CasinoAutoCollect = false,
                    CasinoShowComputers = true,
                    CasinoShowLoot = true,
                    PowerPlantSolver = true,
                    ObjectiveHighlights = true,
                    MansionBossAutoKill = false,
                    JewelryAutoCollect = false,
                },
            }
        end

        function __DARKLUA_BUNDLE_MODULES.b(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.b

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.b = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Bootloader = {}
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local THEME = {
                BAR_FILL = '#',
                BAR_EMPTY = '-',
                BAR_LENGTH = 22,
                LINE_WIDTH = 58,
                VERSION = 'v3.0.0',
                CODENAME = 'NEXUS',
            }

            local function Log(level, message)
                local tags = {
                    BOOT = '[BOOT]  ',
                    OK = '[ OK ]  ',
                    LOAD = '[LOAD]  ',
                    WARN = '[WARN]  ',
                    FAIL = '[FAIL]  ',
                    SYS = '[ >> ]  ',
                    DONE = '[DONE]  ',
                }

                print((tags[level] or '[    ]  ') .. message)
            end
            local function Line(char, len)
                print(string.rep(char or '=', len or THEME.LINE_WIDTH))
            end
            local function Center(text, w)
                w = w or THEME.LINE_WIDTH

                local pad = math.max(0, math.floor((w - #text) / 2))

                print(string.rep(' ', pad) .. text)
            end
            local function Blank()
                print('')
            end
            local function ProgressBar(pct, len)
                len = len or THEME.BAR_LENGTH

                local filled = math.floor(math.clamp(pct, 0, 1) * len)

                return string.format('[%s%s]', string.rep(THEME.BAR_FILL, filled), string.rep(THEME.BAR_EMPTY, len - filled))
            end
            local function Phase_Banner()
                Blank()
                Line('=')
                print(
[[       ___  _      ____                     
      |_  || |    / ___|     JLC SUITE      
        | || |   | |         JAILBREAK      
    _   | || |__ | |___      ENHANCEMENT    
   |___/ |_____|  \____|     SUITE          
    ]])
                Center('NEXUS ARCHITECTURE  ::  ' .. THEME.VERSION)
                Center('Developed by Sammir_14  |  Team JLC')
                Line('=')
                Blank()
                task.wait()
            end
            local function Phase_SystemInfo()
                Line('-')
                Center('SYSTEM INFORMATION')
                Line('-')
                Blank()

                local placeId = game.PlaceId
                local jobId = game.JobId
                local playerName = LocalPlayer and LocalPlayer.Name or 'Unknown'
                local playerId = LocalPlayer and LocalPlayer.UserId or 0
                local playerCount = #Players:GetPlayers()

                Log('SYS', string.format('Player    : %s (ID: %d)', playerName, playerId))
                Log('SYS', string.format('Place     : %d', placeId))
                Log('SYS', string.format('Server    : %s', string.sub(jobId, 1, 16) .. '...'))
                Log('SYS', string.format('Players   : %d online', playerCount))
                Log('SYS', string.format('FPS Cap   : %d', workspace:GetRealPhysicsFPS()))
                Blank()
                task.wait()
            end

            local CRITICAL_METHODS = {
                'getgc',
                'getgenv',
                'getsenv',
                'getrenv',
                'hookfunction',
                'hookmetamethod',
                'setreadonly',
                'checkcaller',
                'setidentity',
                'decompile',
                'getconnections',
                'newcclosure',
                'isexecutorclosure',
                'fireproximityprompt',
                'firetouchinterest',
            }

            local function Phase_ValidateExecutor()
                Line('-')
                Center('EXECUTOR COMPATIBILITY CHECK')
                Line('-')
                Blank()

                local genv = getgenv()
                local passed = 0
                local failed = {}

                for _, name in ipairs(CRITICAL_METHODS)do
                    local found = (genv[name] ~= nil) or (_G[name] ~= nil)

                    if not found and name:find('.', 1, true) then
                        local parent, child = name:match('^(.+)%.(.+)$')

                        if parent and child then
                            found = (genv[parent] and genv[parent][child] ~= nil) or (_G[parent] and _G[parent][child] ~= nil)
                        end
                    end
                    if found then
                        passed = passed + 1

                        Log('OK', string.format('  %-24s FOUND', name))
                    else
                        table.insert(failed, name)
                        Log('FAIL', string.format('  %-24s MISSING', name))
                    end

                    task.wait()
                end

                local compat = math.floor((passed / #CRITICAL_METHODS) * 100)

                Blank()

                if compat >= 90 then
                    Log('OK', string.format('Compatibility: %d%%  [EXCELLENT]', compat))
                elseif compat >= 70 then
                    Log('WARN', string.format('Compatibility: %d%%  [GOOD]', compat))
                else
                    Log('WARN', string.format('Compatibility: %d%%  [LIMITED]', compat))
                end

                Blank()
                task.wait()

                return failed
            end

            local MODULES = {
                {
                    id = 'ENV',
                    label = 'Core/Environment',
                    kb = 8,
                    time = 0.15,
                },
                {
                    id = 'HOOKS',
                    label = 'Core/HookManager',
                    kb = 14,
                    time = 0.2,
                },
                {
                    id = 'LOGGER',
                    label = 'Core/Logger',
                    kb = 6,
                    time = 0.1,
                },
                {
                    id = 'ESP',
                    label = 'Modules/ESP',
                    kb = 32,
                    time = 0.25,
                },
                {
                    id = 'AIMBOT',
                    label = 'Modules/SilentAim',
                    kb = 48,
                    time = 0.3,
                },
                {
                    id = 'MOVEMENT',
                    label = 'Modules/Movement',
                    kb = 22,
                    time = 0.15,
                },
                {
                    id = 'VEHICLES',
                    label = 'Modules/Vehicles',
                    kb = 18,
                    time = 0.15,
                },
                {
                    id = 'BYPASSES',
                    label = 'Robberies/Bypasses',
                    kb = 38,
                    time = 0.25,
                },
                {
                    id = 'CASINO',
                    label = 'Robberies/Casino',
                    kb = 16,
                    time = 0.15,
                },
                {
                    id = 'JEWELRY',
                    label = 'Robberies/Jewelry',
                    kb = 12,
                    time = 0.1,
                },
                {
                    id = 'MANSION',
                    label = 'Robberies/Mansion',
                    kb = 14,
                    time = 0.1,
                },
                {
                    id = 'BANK',
                    label = 'Robberies/Bank',
                    kb = 8,
                    time = 0.08,
                },
                {
                    id = 'MUSEUM',
                    label = 'Robberies/Museum',
                    kb = 8,
                    time = 0.08,
                },
                {
                    id = 'TOMB',
                    label = 'Robberies/Tomb',
                    kb = 6,
                    time = 0.08,
                },
                {
                    id = 'OILRIG',
                    label = 'Robberies/OilRig',
                    kb = 8,
                    time = 0.08,
                },
                {
                    id = 'POWERPLANT',
                    label = 'Robberies/PowerPlant',
                    kb = 20,
                    time = 0.15,
                },
                {
                    id = 'UI',
                    label = 'UI/WindUI Download',
                    kb = 482,
                    time = 0.4,
                },
            }

            local function Phase_LoadModules()
                Line('-')
                Center('LOADING MODULES')
                Line('-')
                Blank()

                local totalKB = 0

                for i, mod in ipairs(MODULES)do
                    local progress = i / #MODULES
                    local bar = ProgressBar(progress)
                    local pct = math.floor(progress * 100)

                    Log('LOAD', string.format('%-26s %s %3d%%  %3dKB', mod.label, bar, pct, mod.kb))

                    totalKB = totalKB + mod.kb

                    task.wait(mod.time / 10)
                end

                Blank()
                Log('DONE', string.format('All %d modules loaded  (%d KB total)', #MODULES, totalKB))
                Blank()
                task.wait()
            end
            local function Phase_Diagnostics()
                pcall(function()
                    local scanner = import('Scanners/Weapon_Diagnostic')

                    if scanner then
                        Log('OK', 'Weapon Scanner active - Monitoring remotes')
                    end
                end)
            end
            local function Phase_Report(errors, bootTime)
                Line('=')
                Center('BOOT REPORT')
                Line('=')
                Blank()

                if #errors == 0 then
                    Log('OK', 'All systems operational. No errors detected.')
                else
                    Log('WARN', string.format('%d method(s) unavailable:', #errors))

                    for _, name in ipairs(errors)do
                        Log('FAIL', '  > ' .. name)
                    end

                    Blank()
                    Log('WARN', 'Some features may be limited on this executor.')
                end

                Blank()
                Line('-')
                Log('SYS', string.format('Boot Time     : %.2fs', bootTime))
                Log('SYS', string.format('Architecture  : %s', THEME.CODENAME))
                Log('SYS', string.format('Version       : %s', THEME.VERSION))
                Log('SYS', string.format('Modules       : %d loaded', #MODULES))
                Log('SYS', 'Menu Key      : [J]')
                Line('-')
                Blank()
                Line('=')
                Center('>> JLC SUITE READY  ::  PRESS [J] TO OPEN MENU <<')
                Line('=')
                Blank()
                task.wait()
            end

            function Bootloader.Load(State)
                local bootStart = os.clock()

                Phase_Banner()
                Phase_SystemInfo()

                local executorErrors = Phase_ValidateExecutor()

                Phase_Diagnostics()
                Phase_LoadModules()

                local bootTime = os.clock() - bootStart

                Phase_Report(executorErrors, bootTime)
            end

            return Bootloader
        end

        function __DARKLUA_BUNDLE_MODULES.c(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.c

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.c = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Utils = {}
            local WindUI = nil

            Utils.Colors = {
                PureWhite = Color3.fromRGB(255, 255, 255),
                PureBlack = Color3.fromRGB(0, 0, 0),
                Crimson = Color3.fromRGB(220, 20, 60),
                SkyBlue = Color3.fromRGB(0, 191, 255),
                LimeGreen = Color3.fromRGB(50, 205, 50),
                Gold = Color3.fromRGB(255, 215, 0),
                Gray = Color3.fromRGB(128, 128, 128),
                DeepBlue = Color3.fromRGB(0, 0, 139),
                Orange = Color3.fromRGB(255, 140, 0),
                Purple = Color3.fromRGB(138, 43, 226),
            }

            function Utils.SetWindUI(instance)
                WindUI = instance
            end
            function Utils.Notify(title, msg, dur)
                if WindUI then
                    pcall(function()
                        WindUI:Notify({
                            Title = title,
                            Content = msg,
                            Duration = dur or 3,
                            Icon = 'bell',
                        })
                    end)
                else
                    print(string.format('[%s] %s', tostring(title), tostring(msg)))
                end
            end
            function Utils.SafeGet(t, k)
                if type(t) ~= 'table' then
                    return nil
                end

                return rawget(t, k)
            end
            function Utils.SafeSet(t, k, v)
                if type(t) ~= 'table' then
                    return false
                end

                rawset(t, k, v)

                return true
            end
            function Utils.Lerp(a, b, t)
                return a + (b - a) * t
            end
            function Utils.GetDistance(pos1, pos2)
                if typeof(pos1) == 'CFrame' then
                    pos1 = pos1.Position
                end
                if typeof(pos2) == 'CFrame' then
                    pos2 = pos2.Position
                end

                return (pos1 - pos2).Magnitude
            end
            function Utils.Round(num, bracket)
                bracket = bracket or 1

                return math.floor(num / bracket + 0.5) * bracket
            end
            function Utils.FormatNumber(num)
                return tostring(num):reverse():gsub('%d%d%d', '%1,'):reverse():gsub('^,', '')
            end
            function Utils.GetClosestPoint(origin, points)
                local closest = nil
                local shortestDist = math.huge

                for _, p in pairs(points)do
                    local d = (origin - p).Magnitude

                    if d < shortestDist then
                        shortestDist = d
                        closest = p
                    end
                end

                return closest, shortestDist
            end
            function Utils.GetTeamData(player)
                if not player or not player.Team then
                    return 'Neutral', Utils.Colors.Gray
                end

                local team = player.Team.Name:lower()

                if team:find('poli') then
                    return 'Police', Utils.Colors.SkyBlue
                elseif team:find('crim') then
                    return 'Criminal', Utils.Colors.Crimson
                elseif team:find('pris') then
                    return 'Prisoner', Utils.Colors.Orange
                end

                return 'Neutral', Utils.Colors.Gray
            end
            function Utils.IsAlive(player)
                local char = player.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')

                return hum and hum.Health > 0
            end
            function Utils.InVehicle(player)
                local char = player.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')

                return hum and hum.Sit == true
            end

            return Utils
        end

        function __DARKLUA_BUNDLE_MODULES.d(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.d

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.d = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Environment = {}

            Environment.Capabilities = {
                GetInfo = (debug and debug.info) or getinfo,
                GetUpvalues = (debug and debug.getupvalues) or getupvalues,
                GetConstants = (debug and debug.getconstants) or getconstants,
                GetConnections = getconnections,
                SetIdentity = setthreadidentity or setidentity or (syn and syn.set_thread_identity),
                Request = request or (syn and syn.request) or (http and http.request),
                WebSocket = WebSocket or (syn and syn.websocket),
                QueueOnTeleport = queue_on_teleport or (syn and syn.queue_on_teleport),
                GetGenv = getgenv,
                GetSClosure = getscriptclosure,
            }

            function Environment.GetCallingScript()
                if not Environment.Capabilities.GetInfo then
                    return nil
                end

                local success, source = pcall(Environment.Capabilities.GetInfo, 4, 's')

                if success and source then
                    return source
                end

                return nil
            end
            function Environment.GetUpvalueByName(func, name)
                if not Environment.Capabilities.GetUpvalues then
                    return nil
                end

                local upvs = Environment.Capabilities.GetUpvalues(func)

                for i, v in pairs(upvs)do
                    if i == name then
                        return v, i
                    end
                end

                return nil
            end
            function Environment.FindModuleInUpvalues(func, criteria)
                if not Environment.Capabilities.GetUpvalues then
                    return nil
                end

                local upvs = Environment.Capabilities.GetUpvalues(func)

                for _, v in pairs(upvs)do
                    if type(v) == 'table' then
                        local match = true

                        for key, valType in pairs(criteria)do
                            if type(rawget(v, key)) ~= valType then
                                match = false

                                break
                            end
                        end

                        if match then
                            return v
                        end
                    end
                end

                return nil
            end
            function Environment.IsCombatScript(source)
                if not source then
                    return false
                end

                local s = source:lower()

                return s:find('gun') or s:find('bullet') or s:find('weapon') or s:find('item') or s:find('local')
            end

            return Environment
        end

        function __DARKLUA_BUNDLE_MODULES.e(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.e

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.e = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Bypasses = {}
            local ProximityPromptService = game:GetService('ProximityPromptService')
            local CollectionService = game:GetService('CollectionService')
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local ReplicatedStorage = game:GetService('ReplicatedStorage')
            local States = {LastCleanUpdate = 0}
            local Database = {
                HazardKeywords = {
                    'laser',
                    'spike',
                    'trap',
                    'electrified',
                    'lava',
                    'void',
                    'hazard',
                    'dart',
                    'arrow',
                    'death',
                    'kill',
                    'gas',
                    'turret',
                    'missile',
                    'flame',
                    'fire',
                    'saw',
                    'blade',
                    'toxic',
                    'poison',
                    'electricity',
                    'volt',
                    'beam',
                    'spikeboard',
                    'trapdoor',
                    'movingbeam',
                    'grid',
                    'walllaser',
                    'floorlaser',
                    'infrared',
                    'uranium',
                    'toxic_waste',
                    'security_beam',
                    'shocker',
                    'shockwave',
                    'pit',
                    'fan',
                    'lasertrap',
                    'laserbeam',
                    'lasermesh',
                    'laserpart',
                    'beampart',
                    'tracking',
                    'sensor',
                    'spotlight',
                    'detect',
                    'scanner',
                    'motionsensor',
                },
                SafeKeywords = {
                    'painting',
                    'case',
                    'money',
                    'cash',
                    'bag',
                    'collect',
                    'button',
                    'seat',
                    'vehicle',
                    'door',
                    'gate',
                    'key',
                    'card',
                    'vault',
                    'computer',
                    'server',
                    'floor',
                    'wall',
                    'ceiling',
                    'window',
                    'museum_item',
                    'artifact',
                    'npc',
                    'floorpart',
                    'wallpart',
                    'camera',
                    'cctv',
                    'binder',
                    'controller',
                    'manager',
                    'handler',
                    'client',
                    'service',
                },
                DangerousTags = {
                    'LaserTrap',
                    'MilitaryLasers',
                    'CCTVCamera',
                    'BossRoomCamera',
                    'Spinner',
                    'MovingLaser',
                    'ReplicateRemote',
                    'MansionLaser',
                    'SecurityBeam',
                    'TrapLaser',
                    'FloorLaser',
                    'InfraredBeam',
                    'MotionSensor',
                    'GasVent',
                    'ElectricFloor',
                },
            }

            local function IsDangerous(obj)
                for _, tag in pairs(Database.DangerousTags)do
                    if obj:IsA('Instance') and CollectionService:HasTag(obj, tag) then
                        return true
                    end
                end

                local name = obj.Name:lower()

                for _, sk in pairs(Database.SafeKeywords)do
                    if name:find(sk) and name ~= 'floor' and name ~= 'level' then
                        return false
                    end
                end

                local match = false

                for _, kw in pairs(Database.HazardKeywords)do
                    if name:find(kw) then
                        match = true

                        break
                    end
                end

                if not match then
                    local current = obj.Parent

                    for i = 1, 3 do
                        if not current or current == workspace then
                            break
                        end

                        local cn = current.Name:lower()

                        for _, sk in pairs(Database.SafeKeywords)do
                            if cn:find(sk) and cn ~= 'floor' and cn ~= 'level' then
                                return false
                            end
                        end
                        for _, kw in pairs(Database.HazardKeywords)do
                            if cn:find(kw) or cn:find('trap') or cn:find('laser') then
                                match = true

                                break
                            end
                        end

                        if match then
                            break
                        end

                        current = current.Parent
                    end
                end
                if match and obj:IsA('BasePart') then
                    return true
                end
                if not match and obj:IsA('BasePart') and obj.Material == Enum.Material.Neon then
                    if obj.Transparency < 0.9 then
                        local s = obj.Size

                        if s.X < 2.5 or s.Y < 2.5 or s.Z < 2.5 then
                            return true
                        end
                    end
                end

                return match
            end
            local function IsRobberyBypassAllowed(obj, State)
                local pathStr = obj:GetFullName():lower()

                if pathStr:find('bank') then
                    return State.Robberies.BankBypass
                elseif pathStr:find('casino') then
                    return State.Robberies.CasinoBypass
                elseif pathStr:find('jewelry') then
                    return State.Robberies.JewelryBypass
                elseif pathStr:find('museum') then
                    return State.Robberies.MuseumBypass
                elseif pathStr:find('mansion') then
                    return State.Robberies.MansionBypass
                elseif pathStr:find('rig') or pathStr:find('oilrig') then
                    return State.Robberies.OilRigBypass
                elseif pathStr:find('tomb') then
                    return State.Robberies.TombBypass
                end

                return State.Robberies.Enabled
            end
            local function CleanHazards(State, force)
                if not State.Robberies.Enabled and not force then
                    return 0
                end

                local now = os.clock()

                if not force and now - States.LastCleanUpdate < 0.25 then
                    return 0
                end

                States.LastCleanUpdate = now

                local char = LocalPlayer.Character
                local hrp = char and char:FindFirstChild('HumanoidRootPart')

                if not hrp and not force then
                    return 0
                end

                local count = 0
                local pos = hrp and hrp.Position or Vector3.zero
                local radius = force and 10000 or 150

                for _, tag in ipairs(Database.DangerousTags)do
                    for _, obj in ipairs(CollectionService:GetTagged(tag))do
                        if obj:IsA('BasePart') then
                            local dist = (obj.Position - pos).Magnitude

                            if dist <= radius then
                                if IsRobberyBypassAllowed(obj, State) then
                                    pcall(function()
                                        if obj.CanTouch ~= false then
                                            obj.CanTouch = false

                                            if obj.Transparency < 0.3 then
                                                obj.Transparency = 0.65
                                            end
                                        end

                                        count = count + 1
                                    end)
                                end
                            end
                        end
                    end
                end

                local robberies = workspace:FindFirstChild('Robberies')

                if robberies then
                    for _, obj in pairs(robberies:GetDescendants())do
                        if obj:IsA('BasePart') and IsDangerous(obj) then
                            local dist = (obj.Position - pos).Magnitude

                            if dist <= radius then
                                if IsRobberyBypassAllowed(obj, State) then
                                    pcall(function()
                                        if obj.CanTouch ~= false then
                                            obj.CanTouch = false

                                            if obj.Transparency < 0.3 then
                                                obj.Transparency = 0.65
                                            end
                                        end

                                        count = count + 1
                                    end)
                                end
                            end
                        elseif obj:IsA('Light') and IsDangerous(obj) then
                            local rootPart = obj:FindFirstChildWhichIsA('BasePart', true) or obj.Parent
                            local dist = (rootPart:IsA('BasePart') and (rootPart.Position - pos).Magnitude) or 0

                            if dist <= radius then
                                if IsRobberyBypassAllowed(obj, State) then
                                    pcall(function()
                                        obj.Enabled = false
                                        obj.Brightness = 0
                                    end)
                                end
                            end
                        end
                    end
                end

                return count
            end
            local function ProcessObject(obj)
                if not obj or not obj:IsA('Instance') then
                    return
                end
                if obj:IsA('ProximityPrompt') then
                    obj.HoldDuration = 0
                    obj.Enabled = true

                    if obj.ObjectText:find('Arrest') or obj.ActionText:find('Arrest') or obj.Name:find('Arrest') then
                        obj.HoldDuration = 0
                    end

                    return
                end
                if obj:IsA('Model') or obj:IsA('BasePart') then
                    pcall(function()
                        local attrs = obj:GetAttributes()

                        for attrName, value in pairs(attrs)do
                            local lowerName = string.lower(attrName)

                            if lowerName:find('duration') or lowerName:find('timed') or lowerName:find('delay') or lowerName:find('arrest') then
                                obj:SetAttribute(attrName, 0)
                            end
                            if lowerName:find('disabled') then
                                obj:SetAttribute(attrName, false)
                            end
                        end
                    end)
                end
            end
            local function ProcessConfig(config)
                if type(config) ~= 'table' then
                    return
                end

                pcall(function()
                    rawset(config, 'Timed', false)
                    rawset(config, 'Duration', 0)
                    rawset(config, 'HoldDuration', 0)
                    rawset(config, 'CircleActionDuration', 0)
                    rawset(config, 'Disabled', false)

                    if rawget(config, 'Dist') and rawget(config, 'Dist') < 35 then
                        rawset(config, 'Dist', 35)
                    end
                end)
            end

            function Bypasses.Init(State)
                task.spawn(function()
                    local CircleActionModule = nil

                    pcall(function()
                        local UI = require(ReplicatedStorage:WaitForChild('Module'):WaitForChild('UI'))

                        if UI and UI.CircleAction then
                            CircleActionModule = UI.CircleAction
                        end
                    end)

                    if not CircleActionModule then
                        pcall(function()
                            for _, v in pairs(getgc(true))do
                                if type(v) == 'table' and rawget(v, 'Add') and rawget(v, 'Remove') and rawget(v, 'AddGroup') then
                                    CircleActionModule = v

                                    break
                                end
                            end
                        end)
                    end
                    if CircleActionModule then
                        local oldAdd = CircleActionModule.Add

                        CircleActionModule.Add = function(config, ...)
                            if State.Robberies.InstantInteract then
                                ProcessConfig(config)
                            end

                            return oldAdd(config, ...)
                        end

                        task.spawn(function()
                            local lastGcScan = 0

                            while true do
                                if State.Robberies.InstantInteract then
                                    if os.clock() - lastGcScan > 6 then
                                        lastGcScan = os.clock()

                                        pcall(function()
                                            for _, v in pairs(getgc(true))do
                                                if type(v) == 'table' and (rawget(v, 'Duration') or rawget(v, 'HoldDuration') or rawget(v, 'Timed')) then
                                                    ProcessConfig(v)
                                                end
                                            end
                                        end)
                                    end
                                end

                                task.wait(3)
                            end
                        end)
                        pcall(function()
                            local mt = getrawmetatable(game)
                            local oldIndex = mt.__index
                            local oldNewindex = mt.__newindex

                            setreadonly(mt, false)

                            mt.__index = newcclosure(function(self, key)
                                if not checkcaller() and typeof(self) == 'Instance' and self:IsA('ProximityPrompt') then
                                    if key == 'HoldDuration' and State.Robberies.InstantInteract then
                                        return 0
                                    end
                                end

                                return oldIndex(self, key)
                            end)
                            mt.__newindex = newcclosure(function(
                                self,
                                key,
                                value
                            )
                                if not checkcaller() and typeof(self) == 'Instance' and self:IsA('ProximityPrompt') then
                                    if key == 'HoldDuration' and State.Robberies.InstantInteract then
                                        return oldNewindex(self, key, 0)
                                    end
                                end

                                return oldNewindex(self, key, value)
                            end)

                            setreadonly(mt, true)
                            print('\u{1f6e1}\u{fe0f} [JES-BYPASS] ProximityPrompt metatable hook inyectado exitosamente.')
                        end)
                        task.spawn(function()
                            local Environment = __DARKLUA_BUNDLE_MODULES.e()

                            if not Environment.Capabilities.GetConnections then
                                return
                            end

                            local Disconnected = {}

                            while true do
                                if State.Robberies.Enabled then
                                    pcall(function()
                                        local connections = Environment.Capabilities.GetConnections(game:GetService('RunService').Heartbeat)

                                        for _, conn in pairs(connections)do
                                            local func = conn.Function

                                            if func and not Disconnected[conn] then
                                                local script = getfenv(func).script

                                                if script and (script.Name:find('Integrity') or script.Name:find('Detection') or script.Name:find('Cheat')) then
                                                    conn:Disable()

                                                    Disconnected[conn] = true

                                                    print('\u{1f6e1}\u{fe0f} [JES-BYPASS] Disabled Integrity Connection: ' .. script.Name)
                                                end
                                            end
                                        end

                                        local focusConnections = Environment.Capabilities.GetConnections(game:GetService('UserInputService').WindowFocusReleased)

                                        for _, conn in pairs(focusConnections)do
                                            if not Disconnected[conn] then
                                                conn:Disable()

                                                Disconnected[conn] = true

                                                print('\u{1f6e1}\u{fe0f} [JES-BYPASS] Disabled Window Focus Tracker')
                                            end
                                        end
                                    end)
                                end

                                task.wait(30)
                            end
                        end)
                    end
                end)
                ProximityPromptService.PromptShown:Connect(function(prompt)
                    if State.Robberies.InstantInteract then
                        ProcessObject(prompt)
                    end
                end)
                workspace.DescendantAdded:Connect(function(desc)
                    if State.Robberies.InstantInteract and desc:IsA('ProximityPrompt') then
                        ProcessObject(desc)
                    end
                end)
                task.spawn(function()
                    while true do
                        if State.Robberies.InstantInteract then
                            pcall(function()
                                local foldersToScan = {
                                    workspace:FindFirstChild('Robberies'),
                                    workspace:FindFirstChild('Buildings'),
                                    workspace:FindFirstChild('City'),
                                    workspace:FindFirstChild('NPCs'),
                                    workspace:FindFirstChild('GuardFolder'),
                                }

                                for _, folder in ipairs(foldersToScan)do
                                    if folder then
                                        for _, prompt in ipairs(folder:GetDescendants())do
                                            if prompt:IsA('ProximityPrompt') then
                                                ProcessObject(prompt)
                                            end
                                        end
                                    end
                                end
                            end)

                            for _, prompt in ipairs(CollectionService:GetTagged('ProximityPrompt'))do
                                ProcessObject(prompt)
                            end
                        end

                        task.wait(3)
                    end
                end)
            end
            function Bypasses.Update(State, Utils)
                if not State.Robberies.Enabled then
                    return
                end

                CleanHazards(State, false)

                if State.Robberies.AntiKnockback then
                    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Humanoid')

                    if hum then
                        hum.PlatformStand = false
                    end
                end
            end
            function Bypasses.ForceSweep(State)
                return CleanHazards(State, true)
            end

            return Bypasses
        end

        function __DARKLUA_BUNDLE_MODULES.f(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.f

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.f = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local NotificationService = {}
            local ReplicatedStorage = game:GetService('ReplicatedStorage')
            local CollectionService = game:GetService('CollectionService')
            local ROBBERY_NAMES = {
                [1] = 'Bank',
                [2] = 'Jewelry',
                [3] = 'Museum',
                [4] = 'Power Plant',
                [5] = 'Cargo Plane',
                [6] = 'Cargo Train',
                [7] = 'Passenger Train',
                [8] = 'Cargo Ship',
                [9] = 'Donut Shop',
                [10] = 'Gas Station',
                [11] = 'Tomb',
                [12] = 'Casino',
                [13] = 'Mansion',
                [14] = 'Oil Rig',
            }
            local LAST_STATES = {}

            function NotificationService.Init(State, Utils)
                task.spawn(function()
                    local folder = ReplicatedStorage:WaitForChild('RobberyStates', 10)

                    if not folder then
                        return
                    end

                    folder.ChildAdded:Connect(function(child)
                        NotificationService.Monitor(child, State, Utils)
                    end)

                    for _, child in ipairs(folder:GetChildren())do
                        NotificationService.Monitor(child, State, Utils)
                    end
                end)
            end
            function NotificationService.Monitor(val, State, Utils)
                val.Changed:Connect(function(newVal)
                    if not State.Robberies.Notifications then
                        return
                    end

                    local id = tonumber(val.Name)
                    local name = ROBBERY_NAMES[id] or ('Robbery ' .. val.Name)

                    if newVal == 2 and LAST_STATES[id] ~= 2 then
                        Utils.Notify('\u{1f513} Robbery Open', name .. ' is now OPEN!', 5)
                    elseif newVal == 3 and LAST_STATES[id] ~= 3 then
                        Utils.Notify('\u{23f3} Robbery Soon', name .. ' is opening SOON!', 5)
                    end

                    LAST_STATES[id] = newVal
                end)
            end

            return NotificationService
        end

        function __DARKLUA_BUNDLE_MODULES.g(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.g

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.g = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Bank = {}

            function Bank.Update(State, Utils, ApplyHighlight)
                if not State.Robberies.GlobalESP then
                    return
                end

                local bank = workspace:FindFirstChild('Bank', true)

                if bank then
                    for _, obj in pairs(bank:GetDescendants())do
                        if obj.Name:lower():find('money') or obj.Name:lower():find('gold') or obj.Name:lower():find('vault') then
                            ApplyHighlight(obj, Color3.fromRGB(255, 215, 0))
                        end
                    end
                end
            end

            return Bank
        end

        function __DARKLUA_BUNDLE_MODULES.h(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.h

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.h = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Database = {
                TAG_COMPUTER = 'CasinoComputer',
                TAG_LOOT = 'CasinoLoot',
                TAG_KEYPAD = 'CasinoKeypadPrompt',
                ATTR_COMPUTER_ACTIVE = 'ComputerActive',
                ATTR_SHOW_DISABLE_PROMPT = 'ShowDisableSecurityPrompt',
                ATTR_ROBBERY_OPEN = 'CasinoRobberyOpen',
                ATTR_ROBBERY_ACTIVE = 'CasinoRobberyActive',
                REMOTE_HACK = 'CasinoComputerHack',
                REMOTE_COLLECT = 'CasinoLootCollect',
                REMOTE_SUBMIT = 'CasinoKeypadSubmit',
                REMOTE_ALARM = 'CasinoTriggerAlarm',
                MODEL_NAME = 'Casino',
                SCREEN_KEYWORDS = {
                    'screen',
                    'display',
                    'code',
                    'monitor',
                },
            }

            return Database
        end

        function __DARKLUA_BUNDLE_MODULES.i(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.i

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.i = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Config = {
                HighlightColor = Color3.fromRGB(0, 255, 120),
                ScanInterval = 30,
            }

            return Config
        end

        function __DARKLUA_BUNDLE_MODULES.j(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.j

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.j = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Casino = {}
            local Database = __DARKLUA_BUNDLE_MODULES.i()
            local Config = __DARKLUA_BUNDLE_MODULES.j()
            local CollectionService = game:GetService('CollectionService')
            local BILLBOARD_TAG = 'JES_CasinoBillboard'

            local function AttachBillboard(comp)
                if comp:FindFirstChild(BILLBOARD_TAG) then
                    return
                end

                local part = nil

                if comp:IsA('Model') and comp.PrimaryPart then
                    part = comp.PrimaryPart
                elseif comp:IsA('BasePart') then
                    part = comp
                else
                    part = comp:FindFirstChildWhichIsA('BasePart')
                end
                if not part then
                    return
                end

                local bb = Instance.new('BillboardGui')

                bb.Name = BILLBOARD_TAG
                bb.Adornee = part
                bb.Size = UDim2.new(0, 200, 0, 50)
                bb.StudsOffset = Vector3.new(0, 4, 0)
                bb.AlwaysOnTop = true
                bb.MaxDistance = 120

                local label = Instance.new('TextLabel')

                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 0.4
                label.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
                label.TextColor3 = Color3.fromRGB(255, 40, 40)
                label.Font = Enum.Font.GothamBold
                label.TextScaled = true
                label.Text = '\u{26a0} HACK THIS PC'

                local corner = Instance.new('UICorner')

                corner.CornerRadius = UDim.new(0, 6)
                corner.Parent = label

                local stroke = Instance.new('UIStroke')

                stroke.Color = Color3.fromRGB(255, 0, 0)
                stroke.Thickness = 1.5
                stroke.Transparency = 0.3
                stroke.Parent = label
                label.Parent = bb
                bb.Parent = part
            end
            local function RemoveBillboard(comp)
                local bb = comp:FindFirstChild(BILLBOARD_TAG, true)

                if bb then
                    bb:Destroy()
                end
            end

            function Casino.AutoHack()
                local computers = CollectionService:GetTagged(Database.TAG_COMPUTER)

                for _, comp in pairs(computers)do
                    if comp:GetAttribute(Database.ATTR_COMPUTER_ACTIVE) == true then
                        local remote = comp:FindFirstChild(Database.REMOTE_HACK)

                        if remote then
                            remote:FireServer()
                        end
                    end
                end
            end
            function Casino.AutoCollect(State)
                if not (State and State.Robberies and State.Robberies.CasinoAutoCollect) then
                    return
                end

                local loot = CollectionService:GetTagged(Database.TAG_LOOT)

                for _, item in pairs(loot)do
                    local remote = item:FindFirstChild(Database.REMOTE_COLLECT)

                    if remote then
                        remote:FireServer()
                    end
                end
            end
            function Casino.GetCode(State)
                local casino = workspace:FindFirstChild(Database.MODEL_NAME, true)
                local ReplicatedStorage = game:GetService('ReplicatedStorage')
                local isOpen = ReplicatedStorage:GetAttribute(Database.ATTR_ROBBERY_OPEN) or (casino and casino:GetAttribute(Database.ATTR_ROBBERY_OPEN))
                local isActive = ReplicatedStorage:GetAttribute(Database.ATTR_ROBBERY_ACTIVE) or (casino and casino:GetAttribute(Database.ATTR_ROBBERY_ACTIVE))

                if isOpen ~= nil and not isOpen and (isActive == nil or not isActive) then
                    return 'CLOSED'
                end

                local keypadPrompts = CollectionService:GetTagged(Database.TAG_KEYPAD)

                if #keypadPrompts == 0 and not isActive then
                    return 'CLOSED'
                end
                if State and State.Robberies and State.Robberies.CasinoAutoHack then
                    Casino.AutoHack()
                end

                local foundCode = nil

                pcall(function()
                    for _, v in pairs(getgc(true))do
                        if type(v) == 'table' then
                            local code = rawget(v, 'Code') or rawget(v, 'code') or rawget(v, 'passcode')

                            if code and type(code) == 'string' and #code == 4 and tonumber(code) then
                                foundCode = code

                                break
                            end
                        end
                    end
                end)

                if not foundCode then
                    local keypads = CollectionService:GetTagged(Database.TAG_KEYPAD)

                    for _, keypad in pairs(keypads)do
                        local attr = keypad:GetAttribute('Code') or keypad:GetAttribute('Passcode')

                        if attr then
                            foundCode = tostring(attr)

                            break
                        end
                    end
                end
                if not foundCode then
                    for _, obj in pairs(casino:GetDescendants())do
                        if obj:IsA('TextLabel') or obj:IsA('TextBox') then
                            local text = obj.Text:gsub('%s+', '')

                            if #text == 4 and tonumber(text) then
                                foundCode = text

                                break
                            end
                        end
                    end
                end
                if not foundCode then
                    for _, kw in pairs(Database.SCREEN_KEYWORDS)do
                        for _, obj in pairs(casino:GetDescendants())do
                            if obj.Name:lower():find(kw) then
                                for _, label in pairs(obj:GetDescendants())do
                                    if label:IsA('TextLabel') then
                                        local text = label.Text:match('%d%d%d%d')

                                        if text then
                                            foundCode = text

                                            break
                                        end
                                    end
                                end
                            end
                            if foundCode then
                                break
                            end
                        end

                        if foundCode then
                            break
                        end
                    end
                end

                local attrCode = casino:GetAttribute('Code')

                if attrCode then
                    foundCode = tostring(attrCode)
                end
                if foundCode then
                    if State and State.Robberies and State.Robberies.CasinoAutoCrack then
                        local submitRemote = casino:FindFirstChild(Database.REMOTE_SUBMIT, true)

                        if submitRemote then
                            submitRemote:FireServer(foundCode)
                        end
                    end

                    return foundCode
                end

                return 'Escaneando...'
            end
            function Casino.Update(State, Utils, ApplyHighlight)
                if not (State and State.Robberies) then
                    return
                end

                local casino = workspace:FindFirstChild(Database.MODEL_NAME, true)

                if not casino then
                    return
                end

                Casino.AutoCollect(State)

                local computers = CollectionService:GetTagged(Database.TAG_COMPUTER)

                for _, comp in pairs(computers)do
                    local isActive = comp:GetAttribute(Database.ATTR_COMPUTER_ACTIVE) == true

                    if isActive then
                        AttachBillboard(comp)

                        if State.Robberies.CasinoShowComputers then
                            ApplyHighlight(comp, Color3.fromRGB(255, 40, 40))
                        end
                    else
                        RemoveBillboard(comp)
                    end
                end

                if State.Robberies.CasinoShowLoot then
                    local loot = CollectionService:GetTagged(Database.TAG_LOOT)

                    for _, item in pairs(loot)do
                        ApplyHighlight(item, Color3.fromRGB(255, 215, 0))
                    end
                end
            end

            return Casino
        end

        function __DARKLUA_BUNDLE_MODULES.k(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.k

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.k = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Database = {
                TAG_JEWEL = 'RobberyJewelryJewel',
                TAG_OBJECTIVE = 'JewelryCase',
                REMOTE_COLLECT = 'maindzkt',
                SAFE_NAMES = {
                    'LaserButton',
                    'Button',
                    'Switch',
                },
            }

            return Database
        end

        function __DARKLUA_BUNDLE_MODULES.l(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.l

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.l = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Jewelry = {}
            local Database = __DARKLUA_BUNDLE_MODULES.l()
            local CollectionService = game:GetService('CollectionService')
            local ReplicatedStorage = game:GetService('ReplicatedStorage')
            local lastCollect = 0

            local function IsSafeName(name)
                for _, safe in pairs(Database.SAFE_NAMES)do
                    if name:find(safe) then
                        return true
                    end
                end

                return false
            end

            function Jewelry.AutoCollect(State)
                if not (State and State.Robberies and State.Robberies.JewelryAutoCollect) then
                    return
                end

                local now = os.clock()

                if now - lastCollect < 1 then
                    return
                end

                lastCollect = now

                local jewels = CollectionService:GetTagged(Database.TAG_JEWEL)

                for _, jewel in pairs(jewels)do
                    if jewel and jewel.Parent and not IsSafeName(jewel.Name) then
                        local prompt = jewel:FindFirstChildWhichIsA('ProximityPrompt', true)

                        if prompt and prompt.Enabled then
                            pcall(function()
                                fireproximityprompt(prompt)
                            end)
                        end

                        local remote = jewel:FindFirstChild(Database.REMOTE_COLLECT) or jewel:FindFirstChildWhichIsA('RemoteEvent')

                        if remote then
                            pcall(function()
                                remote:FireServer(jewel.Name)
                            end)
                        end
                    end
                end
            end
            function Jewelry.Update(State, Utils, ApplyHighlight)
                if not (State and State.Robberies) then
                    return
                end

                Jewelry.AutoCollect(State)

                if not State.Robberies.GlobalESP then
                    return
                end

                for _, obj in pairs(CollectionService:GetTagged(Database.TAG_JEWEL))do
                    if not IsSafeName(obj.Name) then
                        ApplyHighlight(obj, Color3.fromRGB(0, 200, 255))
                    end
                end
                for _, obj in pairs(CollectionService:GetTagged(Database.TAG_OBJECTIVE))do
                    ApplyHighlight(obj, Color3.fromRGB(0, 200, 255))
                end
            end

            return Jewelry
        end

        function __DARKLUA_BUNDLE_MODULES.m(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.m

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.m = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Mansion = {}
            local CollectionService = game:GetService('CollectionService')
            local BOSS_TAG = 'MansionBossNPC'
            local BOSS_DAMAGE_REMOTE = 'MansionBossNPCDamage'
            local BOSS_DAMAGE_AMOUNT = 40
            local lastBossHit = 0

            local function TryDamageBoss()
                local now = os.clock()

                if now - lastBossHit < 0.8 then
                    return
                end

                lastBossHit = now

                local bosses = CollectionService:GetTagged(BOSS_TAG)

                for _, boss in pairs(bosses)do
                    local remote = boss:FindFirstChild(BOSS_DAMAGE_REMOTE)

                    if remote and remote:IsA('RemoteEvent') then
                        pcall(function()
                            remote:FireServer(BOSS_DAMAGE_AMOUNT)
                        end)
                    end
                end

                local mansion = workspace:FindFirstChild('Mansion', true)

                if mansion then
                    local remote = mansion:FindFirstChild(BOSS_DAMAGE_REMOTE, true)

                    if remote and remote:IsA('RemoteEvent') then
                        pcall(function()
                            remote:FireServer(BOSS_DAMAGE_AMOUNT)
                        end)
                    end
                end
            end

            function Mansion.Update(State, Utils, ApplyHighlight)
                if not (State and State.Robberies) then
                    return
                end
                if State.Robberies.MansionBossAutoKill then
                    TryDamageBoss()
                end
                if not State.Robberies.GlobalESP then
                    return
                end

                local mansion = workspace:FindFirstChild('Mansion', true)

                if mansion then
                    for _, obj in pairs(mansion:GetDescendants())do
                        local name = obj.Name:lower()

                        if name:find('ceo') or name:find('boss') then
                            ApplyHighlight(obj, Color3.fromRGB(255, 50, 50))
                        elseif name:find('safe') or name:find('vault') or name:find('loot') then
                            ApplyHighlight(obj, Color3.fromRGB(150, 0, 255))
                        end
                    end
                end

                local bosses = CollectionService:GetTagged(BOSS_TAG)

                for _, boss in pairs(bosses)do
                    ApplyHighlight(boss, Color3.fromRGB(255, 0, 0))
                end
            end

            return Mansion
        end

        function __DARKLUA_BUNDLE_MODULES.n(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.n

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.n = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Museum = {}

            function Museum.Update(State, Utils, ApplyHighlight)
                if not State.Robberies.GlobalESP then
                    return
                end

                local museum = workspace:FindFirstChild('Museum', true)

                if museum then
                    for _, obj in pairs(museum:GetDescendants())do
                        if obj.Name:lower():find('painting') or obj.Name:lower():find('mummy') or obj.Name:lower():find('dinosaur') then
                            ApplyHighlight(obj, Color3.fromRGB(0, 255, 200))
                        end
                    end
                end
            end

            return Museum
        end

        function __DARKLUA_BUNDLE_MODULES.o(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.o

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.o = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local OilRig = {}

            function OilRig.Update(State, Utils, ApplyHighlight)
                if not State.Robberies.GlobalESP then
                    return
                end

                local rig = workspace:FindFirstChild('OilRig', true) or workspace:FindFirstChild('Rig', true)

                if rig then
                    for _, obj in pairs(rig:GetDescendants())do
                        if obj.Name:lower():find('control') or obj.Name:lower():find('computer') or obj.Name:lower():find('valve') then
                            ApplyHighlight(obj, Color3.fromRGB(0, 100, 255))
                        end
                    end
                end
            end

            return OilRig
        end

        function __DARKLUA_BUNDLE_MODULES.p(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.p

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.p = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local PowerPlant = {}
            local ReplicatedStorage = game:GetService('ReplicatedStorage')
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local SOLVE_REMOTE_KEY = 'j' .. ('qk8x0r4ea8y'):sub(5, 7):reverse():reverse():reverse() .. '' .. '' .. ('de4j'):sub(3, 3):reverse() .. 'nqx'

            function PowerPlant.Init(State, Utils)
                task.spawn(function()
                    while true do
                        if State.Robberies.PowerPlantSolver then
                            local flowGui = LocalPlayer.PlayerGui:FindFirstChild('FlowGui')

                            if flowGui and flowGui:FindFirstChild('Frame') and flowGui.Frame.Visible then
                                task.wait(1.5)
                                PowerPlant.Solve()
                                task.wait(5)
                            end
                        end

                        task.wait(1)
                    end
                end)
            end
            function PowerPlant.Solve()
                if not getgc then
                    return
                end

                for _, v in pairs(getgc(true))do
                    if type(v) == 'table' and rawget(v, 'FlowId') and rawget(v, 'Grid') then
                        pcall(function()
                            local remote = ReplicatedStorage.Events:FindFirstChild('PuzzleDone')

                            for _, obj in pairs(ReplicatedStorage:GetDescendants())do
                                if obj:IsA('RemoteEvent') and (obj.Name:find('Puzzle') or obj.Name:find('Flow')) then
                                    obj:FireServer(SOLVE_REMOTE_KEY, v.FlowId, v.Grid)

                                    break
                                end
                            end
                        end)

                        break
                    end
                end
            end
            function PowerPlant.Update(State, Utils, ApplyHighlight) end

            return PowerPlant
        end

        function __DARKLUA_BUNDLE_MODULES.q(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.q = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Tomb = {}
            local CollectionService = game:GetService('CollectionService')

            function Tomb.Update(State, Utils, ApplyHighlight)
                if not State.Robberies.GlobalESP then
                    return
                end

                for _, obj in pairs(CollectionService:GetTagged('TombGem'))do
                    ApplyHighlight(obj, Color3.fromRGB(255, 0, 100))
                end
            end

            return Tomb
        end

        function __DARKLUA_BUNDLE_MODULES.r(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.r

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.r = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Robberies = {}
            local Bypasses = __DARKLUA_BUNDLE_MODULES.f()
            local NotificationService = __DARKLUA_BUNDLE_MODULES.g()
            local Bank = __DARKLUA_BUNDLE_MODULES.h()
            local Casino = __DARKLUA_BUNDLE_MODULES.k()
            local Jewelry = __DARKLUA_BUNDLE_MODULES.m()
            local Mansion = __DARKLUA_BUNDLE_MODULES.n()
            local Museum = __DARKLUA_BUNDLE_MODULES.o()
            local OilRig = __DARKLUA_BUNDLE_MODULES.p()
            local PowerPlant = __DARKLUA_BUNDLE_MODULES.q()
            local Tomb = __DARKLUA_BUNDLE_MODULES.r()

            local function ApplyHighlight(obj, color)
                if not obj or not obj.Parent then
                    return
                end

                pcall(function()
                    local hl = obj:FindFirstChild('JES_Highlight')

                    if not hl then
                        hl = Instance.new('Highlight')
                        hl.Name = 'JES_Highlight'
                        hl.FillColor = color
                        hl.FillTransparency = 0.35
                        hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                        hl.OutlineTransparency = 0.1
                        hl.Parent = obj

                        task.delay(10, function()
                            if hl and hl.Parent then
                                hl:Destroy()
                            end
                        end)
                    end
                end)
            end

            function Robberies.GetCasinoCode()
                return Casino.GetCode(Robberies.LastState)
            end
            function Robberies.InitUI(Tab, State)
                Robberies.LastState = State
            end
            function Robberies.Init(State, Utils)
                Robberies.LastState = State

                Bypasses.Init(State)
                NotificationService.Init(State, Utils or __DARKLUA_BUNDLE_MODULES.d())
                PowerPlant.Init(State, Utils or __DARKLUA_BUNDLE_MODULES.d())
            end
            function Robberies.Update(State, Utils)
                Robberies.LastState = State

                Bypasses.Update(State, Utils)
                pcall(Bank.Update, State, Utils, ApplyHighlight)
                pcall(Casino.Update, State, Utils, ApplyHighlight)
                pcall(Jewelry.Update, State, Utils, ApplyHighlight)
                pcall(Mansion.Update, State, Utils, ApplyHighlight)
                pcall(Museum.Update, State, Utils, ApplyHighlight)
                pcall(OilRig.Update, State, Utils, ApplyHighlight)
                pcall(PowerPlant.Update, State, Utils, ApplyHighlight)
                pcall(Tomb.Update, State, Utils, ApplyHighlight)
            end
            function Robberies.ForceSweep(State)
                return Bypasses.ForceSweep(State)
            end

            return Robberies
        end

        function __DARKLUA_BUNDLE_MODULES.s(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.s

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.s = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local UI = {}

            function UI.Init(State)
                local WindUI = loadstring(game:HttpGet(
[[https://github.com/Footagesus/WindUI/releases/latest/download/main.lua]]))()
                local es = {
                    ['tab-esp'] = 'ESP (Visi\u{f3}n)',
                    ['tab-mov'] = 'Movimiento Elite',
                    ['tab-aim'] = 'Combat Master',
                    ['tab-npcs'] = 'NPCs & Otros',
                    ['tab-world'] = 'Centro de Robos',
                    ['tab-veh'] = 'Garaje Maestro',
                    ['tab-dash'] = 'Panel de Info',
                    ['tab-lang'] = 'Config. Idioma',
                    ['esp-toggle'] = 'Habilitar ESP',
                    ['esp-desc'] = 'Visualiza jugadores a trav\u{e9}s de paredes con informaci\u{f3}n t\u{e1}ctica.',
                    ['esp-dist'] = 'Rango de Visi\u{f3}n',
                    ['esp-dist-d'] = 'Distancia m\u{e1}xima para renderizar etiquetas de jugadores.',
                    ['esp-team'] = 'Diferenciar Equipos',
                    ['esp-team-d'] = 'Aplica colores tem\u{e1}ticos (Azul: Polic\u{ed}a, Rojo: Criminal).',
                    ['mov-dash'] = 'Dash T\u{e1}ctico (L-Ctrl)',
                    ['mov-dash-d'] = 'Peque\u{f1}o impulso de velocidad en la direcci\u{f3}n de la c\u{e1}mara.',
                    ['mov-dash-f'] = 'Potencia de Impulso',
                    ['mov-dash-f-d'] = 'Fuerza aplicada al BodyVelocity del jugador.',
                    ['mov-dash-c'] = 'Tiempo de Recarga',
                    ['mov-dash-c-d'] = 'Segundos de espera entre cada Dash.',
                    ['mov-sprint'] = 'Sprint Avanzado (L-Shift)',
                    ['mov-sprint-d'] = 'Aumenta la velocidad base y aplica efecto de FOV din\u{e1}mico.',
                    ['mov-jump'] = 'Salto Acrob\u{e1}tico',
                    ['mov-jump-d'] = 'Permite realizar un segundo salto mientras est\u{e1}s en el aire.',
                    ['mov-bhop'] = 'Bunnyhop Autom\u{e1}tico',
                    ['mov-bhop-d'] = 'Mantiene el salto al tocar el suelo para conservar inercia.',
                    ['mov-fall'] = 'Seguridad de Ca\u{ed}da',
                    ['mov-fall-d'] = 'Detecta velocidades verticales peligrosas y las suaviza.',
                    ['nitro-inf'] = 'Rocket Fuel Ilimitado',
                    ['nitro-desc'] = 'Mantiene el tanque de nitro siempre al 100% de capacidad.',
                    ['nitro-title'] = '\u{1f680} Sistema de Propulsi\u{f3}n',
                    ['nitro-cont'] = 'La energ\u{ed}a cin\u{e9}tica se recupera instant\u{e1}neamente al usar el propulsor.',
                    ['aim-toggle'] = 'Activar Combat Master',
                    ['aim-desc'] = 'Sistema de asistencia de disparo con bloqueo de c\u{e1}mara suave.',
                    ['aim-headshot-t'] = 'Prioridad Cr\u{ed}tica',
                    ['aim-headshot-d'] = 'Enfoca los disparos autom\u{e1}ticamente a la cabeza del objetivo.',
                    ['aim-npcs'] = 'Filtro de Hostiles',
                    ['aim-n-desc'] = 'Ignora a los aliados y se enfoca solo en criminales/polic\u{ed}as enemigos.',
                    ['aim-ind'] = 'Marcador de Objetivo',
                    ['aim-ind-d'] = 'Dibuja un anillo visual sobre el objetivo bloqueado.',
                    ['aim-range-t'] = 'Alcance del Radar',
                    ['aim-range-d'] = 'Distancia en studs para la detecci\u{f3}n de amenazas.',
                    ['aim-key-t'] = 'Acceso R\u{e1}pido (Aim)',
                    ['aim-key-d'] = 'Tecla configurable para alternar el sistema de combate.',
                    ['aim-always-t'] = 'Fijaci\u{f3}n Continua',
                    ['aim-always-d'] = 'Mantiene el objetivo fijado sin necesidad de interacci\u{f3}n manual.',
                    ['aim-predict-t'] = 'C\u{e1}lculo de Trayectoria',
                    ['aim-predict-d'] = 
[[Compensa la velocidad del objetivo para asegurar el impacto.]],
                    ['aim-lerp-t'] = 'Suavidad de Seguimiento',
                    ['aim-lerp-d'] = "Ajusta qu\u{e9} tan 'humano' se siente el movimiento de c\u{e1}mara.",
                    ['aim-bspeed-t'] = 'Velocidad de Proyectil',
                    ['aim-bspeed-d'] = 'Ajuste manual para diferentes tipos de armas.',
                    ['aim-offset-t'] = 'Compensaci\u{f3}n de Altura',
                    ['aim-offset-d'] = 'Ajuste vertical fino para centrar el disparo perfectamente.',
                    ['veh-toggle'] = 'Activar Modificaciones',
                    ['veh-desc'] = 'Desbloquea el potencial oculto de todos los veh\u{ed}culos.',
                    ['veh-speed'] = 'Velocidad M\u{e1}xima (TopSpeed)',
                    ['veh-speed-d'] = 'Aumenta el l\u{ed}mite de velocidad en tierra, aire y agua.',
                    ['veh-torque'] = 'Par Motor (Aceleraci\u{f3}n)',
                    ['veh-torque-d'] = 'Mejora la respuesta del motor para arranques instant\u{e1}neos.',
                    ['veh-height'] = 'Ajuste de Suspensi\u{f3}n',
                    ['veh-height-d'] = 'Cambia la altura del chasis para evitar obst\u{e1}culos bajos.',
                    ['veh-info-t'] = '\u{1f4dc} Protocolo de Seguridad',
                    ['veh-info-c'] = 'Velocidades superiores a 400 pueden causar inestabilidad. \u{da}sese con precauci\u{f3}n.',
                    ['npc-freeze'] = 'Par\u{e1}lisis de NPCs',
                    ['npc-f-desc'] = 'Inmoviliza a los guardias y NPCs enemigos en tu radio de visi\u{f3}n.',
                    ['npc-kill'] = 'Barrido de NPCs',
                    ['npc-k-desc'] = 
[[Elimina de forma segura los NPCs detectados en el servidor local.]],
                    ['world-toggle'] = 'Habilitar Protecci\u{f3}n',
                    ['world-desc'] = 'Inmunidad total en todos los entornos de robo (Bypass).',
                    ['world-how-t'] = '\u{1f6e1}\u{fe0f} JLC Universal Shield',
                    ['world-how-c'] = 'Bypass verificado para l\u{e1}seres, pinchos, c\u{e1}maras y gas en todos los robos activos.',
                    ['info-suite-t'] = '\u{1f6f8} JLC Suite v1.0.4 Premium',
                    ['info-suite-c'] = 'La suite m\u{e1}s avanzada para Jailbreak.',
                    ['info-keys-t'] = '\u{2328}\u{fe0f} Gu\u{ed}a de Controles',
                    ['info-keys-c'] = 
[=[Menu: [J] | Dash: [L-Ctrl] | Sprint: [L-Shift] | Salto: [Espacio]]=],
                    ['discord-d'] = '\u{da}nete para actualizaciones.',
                    ['rob-pp-solver'] = 'Auto-Resolver Planta El\u{e9}ctrica',
                    ['rob-pp-solver-d'] = 'Resuelve el puzzle de flujo autom\u{e1}ticamente al abrirlo.',
                    ['rob-notifs'] = 'Notificaciones de Robos',
                    ['rob-notifs-d'] = 'Avisa cuando un robo est\u{e1} por abrir o ya est\u{e1} abierto.',
                    ['veh-brakes'] = 'Frenos de Potencia',
                    ['veh-brakes-d'] = 'Multiplica la fuerza de frenado para paradas instant\u{e1}neas.',
                    ['veh-turn'] = 'Radio de Giro',
                    ['veh-turn-d'] = 'Mejora la agilidad del veh\u{ed}culo al doblar.',
                    ['world-interact'] = 'Interactuar Instant\u{e1}neo (E)',
                    ['world-interact-d'] = 
[[Elimina el tiempo de espera para todas las acciones con la tecla E.]],
                }
                local en = {
                    ['tab-esp'] = 'ESP (Vision)',
                    ['tab-mov'] = 'Elite Movement',
                    ['tab-aim'] = 'Combat Master',
                    ['tab-npcs'] = 'NPCs & Others',
                    ['tab-world'] = 'Robberies Control',
                    ['tab-veh'] = 'Master Garage',
                    ['tab-dash'] = 'Info Dashboard',
                    ['tab-lang'] = 'Lang Config',
                    ['esp-toggle'] = 'Enable ESP',
                    ['esp-desc'] = 'Visualize players through walls with tactical information.',
                    ['esp-dist'] = 'Vision Range',
                    ['esp-dist-d'] = 'Maximum distance to render player tags.',
                    ['esp-team'] = 'Team Differentiation',
                    ['esp-team-d'] = 'Applies thematic colors (Blue: Police, Red: Criminal).',
                    ['mov-dash'] = 'Tactical Dash (L-Ctrl)',
                    ['mov-dash-d'] = 'Small speed boost in the direction of the camera.',
                    ['mov-dash-f'] = 'Boost Power',
                    ['mov-dash-f-d'] = "Force applied to the player's BodyVelocity.",
                    ['mov-dash-c'] = 'Cooldown Time',
                    ['mov-dash-c-d'] = 'Seconds to wait between each Dash.',
                    ['mov-sprint'] = 'Advanced Sprint (L-Shift)',
                    ['mov-sprint-d'] = 'Increases base speed and applies dynamic FOV effect.',
                    ['mov-jump'] = 'Acrobatic Jump',
                    ['mov-jump-d'] = 'Allows a second jump while in mid-air.',
                    ['mov-bhop'] = 'Automatic Bunnyhop',
                    ['mov-bhop-d'] = 'Holds jump upon landing to maintain momentum.',
                    ['mov-fall'] = 'Fall Safety',
                    ['mov-fall-d'] = 'Detects dangerous vertical speeds and smooths them.',
                    ['nitro-inf'] = 'Unlimited Rocket Fuel',
                    ['nitro-desc'] = 'Keeps the nitro tank always at 100% capacity.',
                    ['nitro-title'] = '\u{1f680} Propulsion System',
                    ['nitro-cont'] = 'Kinetic energy recovers instantly when using the thruster.',
                    ['aim-toggle'] = 'Enable Combat Master',
                    ['aim-desc'] = 'Shooting assist system with smooth camera locking.',
                    ['aim-headshot-t'] = 'Critical Priority',
                    ['aim-headshot-d'] = 'Automatically targets the head of the objective.',
                    ['aim-npcs'] = 'Hostile Filter',
                    ['aim-n-desc'] = 'Ignores allies and focuses only on enemy criminals/police.',
                    ['aim-ind'] = 'Target Marker',
                    ['aim-ind-d'] = 'Draws a visual ring over the locked target.',
                    ['aim-range-t'] = 'Radar Range',
                    ['aim-range-d'] = 'Detection distance in studs for threats.',
                    ['aim-key-t'] = 'Quick Access (Aim)',
                    ['aim-key-d'] = 'Configurable key to toggle the combat system.',
                    ['aim-always-t'] = 'Continuous Locking',
                    ['aim-always-d'] = 'Keeps the target locked without manual interaction.',
                    ['aim-predict-t'] = 'Trajectory Calculation',
                    ['aim-predict-d'] = 'Compensates for target speed to ensure impact.',
                    ['aim-lerp-t'] = 'Tracking Smoothness',
                    ['aim-lerp-d'] = "Adjusts how 'human' the camera movement feels.",
                    ['aim-bspeed-t'] = 'Projectile Speed',
                    ['aim-bspeed-d'] = 'Manual adjustment for different weapon types.',
                    ['aim-offset-t'] = 'Vertical Compensation',
                    ['aim-offset-d'] = 'Fine vertical adjustment to perfectly center the shot.',
                    ['veh-toggle'] = 'Enable Modifications',
                    ['veh-desc'] = 'Unlocks the hidden potential of all vehicles.',
                    ['veh-speed'] = 'Maximum Speed (TopSpeed)',
                    ['veh-speed-d'] = 'Increases speed limit on land, air, and water.',
                    ['veh-torque'] = 'Engine Torque (Accel)',
                    ['veh-torque-d'] = 'Improves engine response for instant starts.',
                    ['veh-height'] = 'Suspension Adjust',
                    ['veh-height-d'] = 'Changes chassis height to avoid low obstacles.',
                    ['veh-info-t'] = '\u{1f4dc} Safety Protocol',
                    ['veh-info-c'] = 'Speeds over 400 may cause instability. Use with caution.',
                    ['npc-freeze'] = 'NPC Paralysis',
                    ['npc-f-desc'] = 'Immobilizes enemy guards and NPCs in your vision radius.',
                    ['npc-kill'] = 'NPC Sweep',
                    ['npc-k-desc'] = 'Safely eliminates detected NPCs in the local server.',
                    ['world-toggle'] = 'Enable Protection',
                    ['world-desc'] = 'Total immunity in all robbery environments (Bypass).',
                    ['world-how-t'] = '\u{1f6e1}\u{fe0f} JLC Universal Shield',
                    ['world-how-c'] = 
[[Verified bypass for lasers, spikes, cameras, and gas in all active robberies.]],
                    ['info-suite-t'] = '\u{1f6f8} JLC Suite v1.0.4 Premium',
                    ['info-suite-c'] = 'The most advanced suite for Jailbreak.',
                    ['info-keys-t'] = '\u{2328}\u{fe0f} Controls Guide',
                    ['info-keys-c'] = 
[=[Menu: [J] | Dash: [L-Ctrl] | Sprint: [L-Shift] | Jump: [Space]]=],
                    ['discord-t'] = 'JLC Community',
                    ['discord-d'] = 'Join for updates.',
                    ['rob-pp-solver'] = 'Power Plant Auto-Solver',
                    ['rob-pp-solver-d'] = 'Automatically solves the flow puzzle when opened.',
                    ['rob-notifs'] = 'Robbery Notifications',
                    ['rob-notifs-d'] = 'Alerts when a robbery is about to open or is already open.',
                    ['veh-turn'] = 'Turn Radius',
                    ['veh-turn-d'] = 'Improves vehicle agility when turning.',
                    ['world-interact'] = 'Instant Interaction (E)',
                    ['world-interact-d'] = 'Eliminates hold duration for all interactions in the game.',
                }

                WindUI:Localization({
                    Enabled = true,
                    DefaultLanguage = 'es',
                    Prefix = 'loc:',
                    Translations = {
                        ['es'] = es,
                        ['en'] = en,
                    },
                })

                local Window = WindUI:CreateWindow({
                    Title = 'JLC | Jailbreak Enhancement Suite',
                    Icon = 'shield',
                    Author = 'JLC Team',
                    Folder = 'JLC_Config_v1',
                    Size = UDim2.fromOffset(600, 480),
                    MinSize = Vector2.new(540, 380),
                    ToggleKey = Enum.KeyCode.J,
                    Transparent = true,
                    Theme = 'Dark',
                    Resizable = true,
                    SideBarWidth = 185,
                    HideSearchBar = true,
                })
                local Tabs = {
                    ESP = Window:Tab({
                        Title = 'loc:tab-esp',
                        Icon = 'eye',
                    }),
                    Movement = Window:Tab({
                        Title = 'loc:tab-mov',
                        Icon = 'zap',
                    }),
                    Combat = Window:Tab({
                        Title = 'loc:tab-aim',
                        Icon = 'crosshair',
                    }),
                    NPCs = Window:Tab({
                        Title = 'loc:tab-npcs',
                        Icon = 'user-round-x',
                    }),
                    Robberies = Window:Tab({
                        Title = 'loc:tab-world',
                        Icon = 'shield-check',
                    }),
                    Vehicles = Window:Tab({
                        Title = 'loc:tab-veh',
                        Icon = 'car',
                    }),
                    Debug = Window:Tab({
                        Title = 'Debug Console',
                        Icon = 'terminal',
                    }),
                    Info = Window:Tab({
                        Title = 'loc:tab-dash',
                        Icon = 'info',
                    }),
                    Lang = Window:Tab({
                        Title = 'loc:tab-lang',
                        Icon = 'languages',
                    }),
                }
                local Logger = __DARKLUA_BUNDLE_MODULES.a()

                Tabs.Debug:Section({
                    Title = 'System Logs & Diagnosis',
                })

                local LogParagraph = Tabs.Debug:Paragraph({
                    Title = 'Live Output',
                    Content = 'Initializing system logs...',
                })

                task.spawn(function()
                    local lastCount = -1

                    while true do
                        pcall(function()
                            if Logger.ChangeCount ~= lastCount then
                                lastCount = Logger.ChangeCount

                                local history = Logger.GetFormatted()

                                if history == '' then
                                    history = 'No logs yet.'
                                end

                                local lines = string.split(history, '\n')
                                local lastLines = ''
                                local start = math.max(1, #lines - 15)

                                for i = start, #lines do
                                    lastLines = lastLines .. lines[i] .. '\n'
                                end

                                LogParagraph:Set({Content = lastLines})
                            end
                        end)
                        task.wait(0.5)
                    end
                end)
                Tabs.Debug:Section({
                    Title = 'Actions',
                })
                Tabs.Debug:Button({
                    Title = 'Copy Session Report',
                    Desc = 'Copy the structured JLC session report to clipboard.',
                    Icon = 'clipboard-list',
                    Callback = function()
                        setclipboard(Logger.GenerateReport())
                        WindUI:Notify({
                            Title = 'Logger',
                            Content = 'Session report copied to clipboard!',
                            Duration = 3,
                        })
                    end,
                })
                Tabs.Debug:Button({
                    Title = 'Copy Errors Only',
                    Desc = 'Copy only critical errors for debugging.',
                    Icon = 'alert-circle',
                    Callback = function()
                        setclipboard(Logger.GetFormatted('ERROR'))
                        WindUI:Notify({
                            Title = 'Logger',
                            Content = 'Errors copied!',
                            Duration = 3,
                        })
                    end,
                })
                Tabs.Debug:Button({
                    Title = 'Copy Warnings Only',
                    Desc = 'Copy only system warnings.',
                    Icon = 'alert-triangle',
                    Callback = function()
                        setclipboard(Logger.GetFormatted('WARN'))
                        WindUI:Notify({
                            Title = 'Logger',
                            Content = 'Warnings copied!',
                            Duration = 3,
                        })
                    end,
                })
                Tabs.Debug:Button({
                    Title = 'Clear Logs',
                    Desc = 'Wipe the local history.',
                    Icon = 'trash',
                    Callback = function()
                        Logger.Clear()
                        WindUI:Notify({
                            Title = 'Logger',
                            Content = 'History cleared.',
                            Duration = 3,
                        })
                    end,
                })

                local RobberyService = __DARKLUA_BUNDLE_MODULES.s()

                Tabs.Robberies:Section({
                    Title = '\u{1f3b0} Casino',
                })
                Tabs.Robberies:Button({
                    Title = '\u{1f511} Revelar C\u{f3}digo del Keypad',
                    Desc = 'Escanea memoria y entorno para obtener el c\u{f3}digo de 4 d\u{ed}gitos del Keypad del Casino.',
                    Icon = 'key',
                    Callback = function()
                        local code = RobberyService.GetCasinoCode()

                        if code == 'CLOSED' then
                            WindUI:Notify({
                                Title = '\u{1f3b0} Casino Cerrado',
                                Content = 'El Casino est\u{e1} actualmente cerrado. No es posible obtener el c\u{f3}digo.',
                                Duration = 6,
                                Icon = 'lock',
                            })
                        elseif code and #code == 4 and tonumber(code) then
                            pcall(function()
                                setclipboard(code)
                            end)
                            WindUI:Notify({
                                Title = '\u{1f3b0} C\u{f3}digo Keypad Casino',
                                Content = 'C\u{f3}digo: [ ' .. code .. ' ] \u{2014} Copiado al portapapeles.',
                                Duration = 10,
                                Icon = 'key',
                            })
                        else
                            WindUI:Notify({
                                Title = '\u{1f3b0} Casino',
                                Content = 'No se pudo extraer el c\u{f3}digo. Aseg\u{fa}rate de estar dentro del Casino.',
                                Duration = 5,
                                Icon = 'alert-triangle',
                            })
                        end
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = 'Auto-Resolver Casino',
                    Desc = 'Hackea PCs activas y env\u{ed}a el c\u{f3}digo al Keypad autom\u{e1}ticamente.',
                    Icon = 'cpu',
                    Value = State.Robberies.CasinoAutoCrack,
                    Callback = function(s)
                        State.Robberies.CasinoAutoHack = s
                        State.Robberies.CasinoAutoCrack = s
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Casino (Camaras/Lasers)',
                    Desc = 'Desactiva lasers, focos y rejillas del Casino.',
                    Icon = 'dices',
                    Value = State.Robberies.CasinoBypass,
                    Callback = function(s)
                        State.Robberies.CasinoBypass = s
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = 'ESP de Objetivos',
                    Desc = 'Resalta objetivos de robo, vitrinas, loot y PCs activas.',
                    Icon = 'sparkles',
                    Value = State.Robberies.ObjectiveHighlights,
                    Callback = function(s)
                        State.Robberies.ObjectiveHighlights = s
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = 'Notificaciones de Robos',
                    Desc = 'Avisa cuando un robo est\u{e1} por abrir o ya est\u{e1} abierto.',
                    Icon = 'bell',
                    Value = State.Robberies.Notifications,
                    Callback = function(s)
                        State.Robberies.Notifications = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f48e} Joyer\u{ed}a',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Joyer\u{ed}a (Piso Electrificado)',
                    Desc = 'Desactiva los l\u{e1}seres de piso en la Joyer\u{ed}a.',
                    Icon = 'gem',
                    Value = State.Robberies.JewelryBypass,
                    Callback = function(s)
                        State.Robberies.JewelryBypass = s
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = 'Auto-Recolecci\u{f3}n de Vitrinas',
                    Desc = 'Recoge autom\u{e1}ticamente las joyas de las vitrinas cuando est\u{e1}s dentro.',
                    Icon = 'diamond',
                    Value = State.Robberies.JewelryAutoCollect,
                    Callback = function(s)
                        State.Robberies.JewelryAutoCollect = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f3f0} Mansi\u{f3}n del CEO',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Mansi\u{f3}n (Ataques Orbitales)',
                    Desc = 'Desactiva trampas l\u{e1}ser y orbitales en la Mansi\u{f3}n.',
                    Icon = 'castle',
                    Value = State.Robberies.MansionBypass,
                    Callback = function(s)
                        State.Robberies.MansionBypass = s
                    end,
                })
                Tabs.Robberies:Toggle({
                    Title = '\u{2694}\u{fe0f} Auto-Matar Boss CEO',
                    Desc = 'Dispara da\u{f1}o (40 DMG) autom\u{e1}ticamente al Boss del CEO cuando est\u{e1} activo.',
                    Icon = 'swords',
                    Value = State.Robberies.MansionBossAutoKill,
                    Callback = function(s)
                        State.Robberies.MansionBossAutoKill = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f3e6} Banco',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Banco (Lasers)',
                    Desc = 'Desactiva lasers y trampas en el Banco.',
                    Icon = 'landmark',
                    Value = State.Robberies.BankBypass,
                    Callback = function(s)
                        State.Robberies.BankBypass = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f3a8} Museo',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Museo (Sensores/Luces)',
                    Desc = 'Desactiva detectores y luces de seguridad del Museo.',
                    Icon = 'palette',
                    Value = State.Robberies.MuseumBypass,
                    Callback = function(s)
                        State.Robberies.MuseumBypass = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f6e2}\u{fe0f} Plataforma Petrolera',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Plataforma Petrolera',
                    Desc = 'Desactiva lasers de seguridad en la Plataforma.',
                    Icon = 'ship',
                    Value = State.Robberies.OilRigBypass,
                    Callback = function(s)
                        State.Robberies.OilRigBypass = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{1f480} Tumba',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Bypass de Tumba (Pinchos/Flechas)',
                    Desc = 'Desactiva trampas de pinchos y flechas en la Tumba.',
                    Icon = 'skull',
                    Value = State.Robberies.TombBypass,
                    Callback = function(s)
                        State.Robberies.TombBypass = s
                    end,
                })
                Tabs.Robberies:Section({
                    Title = '\u{26a1} Planta El\u{e9}ctrica',
                })
                Tabs.Robberies:Toggle({
                    Title = 'Auto-Resolver Puzzle',
                    Desc = 'Resuelve el puzzle de flujo autom\u{e1}ticamente al abrirlo.',
                    Icon = 'cpu',
                    Value = State.Robberies.PowerPlantSolver,
                    Callback = function(s)
                        State.Robberies.PowerPlantSolver = s
                    end,
                })
                Tabs.Robberies:Button({
                    Title = 'Resolver Puzzle Ahora',
                    Desc = 'Fuerza la resoluci\u{f3}n instant\u{e1}nea del puzzle de la Planta El\u{e9}ctrica.',
                    Icon = 'check-check',
                    Callback = function()
                        local PowerPlantSolver = __DARKLUA_BUNDLE_MODULES.q()

                        PowerPlantSolver.Solve()
                        WindUI:Notify({
                            Title = 'Solver',
                            Content = 'Intento de resoluci\u{f3}n enviado.',
                            Duration = 3,
                        })
                    end,
                })
                Tabs.Robberies:Paragraph({
                    Title = 'Estado de Protecci\u{f3}n',
                    Content = 'Elige qu\u{e9} robos deseas mitigar. Desactivar un interruptor reactivar\u{e1} los l\u{e1}seres de ese robo de inmediato.',
                })
                Tabs.Info:Paragraph({
                    Title = 'JLC PREMIUM FAQ',
                    Content = 'Bienvenido a la suite definitiva. Aqu\u{ed} encontrar\u{e1}s ayuda b\u{e1}sica.',
                })
                Tabs.Info:Section({
                    Title = '\u{1f4cb} Developer Session Logs',
                })
                Tabs.Info:Button({
                    Title = 'Copiar Reporte de Logs (JLC)',
                    Desc = 'Copia un reporte formateado y limpio con todos los logs del script para pas\u{e1}rselo al desarrollador.',
                    Icon = 'copy',
                    Callback = function()
                        setclipboard(Logger.GenerateReport())
                        WindUI:Notify({
                            Title = 'Logs Copiados',
                            Content = 'Reporte de sesi\u{f3}n JLC copiado. \u{a1}P\u{e9}galo en el chat!',
                            Duration = 5,
                            Icon = 'check',
                        })
                    end,
                })
                Tabs.Info:Section({
                    Title = 'Frequently Asked Questions',
                })
                Tabs.Info:Paragraph({
                    Title = 'How to use Silent Aim?',
                    Content = 
[[Enable it in the Combat tab, set your keybind, and hold the key while aiming near a target.]],
                })
                Tabs.Info:Paragraph({
                    Title = 'Is this script safe?',
                    Content = 
[[Yes, it uses advanced bypasses and legit-style movement to minimize detection risk.]],
                })
                Tabs.Info:Paragraph({
                    Title = 'What is Universal Protection?',
                    Content = 
[[It is a system that scans the game for hazards like lasers and spikes and neutralizes them automatically.]],
                })
                Tabs.Info:Paragraph({
                    Title = 'Performance issues?',
                    Content = 
[[If you experience lag, disable ESP or reduce the ESP distance in the settings.]],
                })
                Tabs.Info:Section({
                    Title = 'Credits & Legal',
                })
                Tabs.Info:Paragraph({
                    Title = 'Development',
                    Content = 'Sammir_14 (JLC Lead). Core Architecture by JLC Team.',
                })
                Tabs.Info:Paragraph({
                    Title = 'Design',
                    Content = 'WindUI Framework - Optimized for high-density environments.',
                })
                Tabs.Info:Button({
                    Title = 'loc:discord-t',
                    Desc = 'loc:discord-d',
                    Icon = 'message-circle',
                    Callback = function()
                        setclipboard('https://discord.gg/jailbreaklegit')
                        WindUI:Notify({
                            Title = 'Discord',
                            Content = 'Link copiado',
                            Duration = 3,
                        })
                    end,
                })
                Tabs.Info:Section({
                    Title = '\u{1f6e0}\u{fe0f} JLC Diagnostics',
                })
                Tabs.Info:Button({
                    Title = 'Run Executor Checker',
                    Desc = 
[[Analiza la potencia y compatibilidad de tu ejecutador actual.]],
                    Icon = 'shield-search',
                    Callback = function()
                        loadstring(readfile('scripts/ExecutorChecker.lua'))()
                    end,
                })

                return WindUI, Window, Tabs
            end

            return UI
        end

        function __DARKLUA_BUNDLE_MODULES.t(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.t

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.t = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local ESP = {}
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local Camera = workspace.CurrentCamera
            local Config = {
                Enabled = true,
                MaxDistance = 5000,
                RefreshRate = 0.066,
            }
            local States = {
                ESPFolder = nil,
                ESP_CACHE = {},
                FolderName = 'JES_Lite_ESP',
            }
            local Database = {
                TeamColors = {
                    Police = Color3.fromRGB(0, 120, 255),
                    Criminal = Color3.fromRGB(255, 0, 0),
                    Prisoner = Color3.fromRGB(255, 120, 0),
                    Neutral = Color3.fromRGB(200, 200, 200),
                },
            }

            local function GetTeamData(player)
                local team = player.Team

                if not team then
                    return 'Neutral', Database.TeamColors.Neutral
                end

                local n = team.Name:lower()

                if n:find('poli') then
                    return 'Police', Database.TeamColors.Police
                end
                if n:find('crim') then
                    return 'Criminal', Database.TeamColors.Criminal
                end
                if n:find('pris') then
                    return 'Prisoner', Database.TeamColors.Prisoner
                end

                return 'Neutral', Database.TeamColors.Neutral
            end
            local function SetupPlayerESP(player, State)
                if States.ESP_CACHE[player] then
                    return
                end

                local playerFolder = Instance.new('Folder')

                playerFolder.Name = player.Name
                playerFolder.Parent = States.ESPFolder

                local bb = Instance.new('BillboardGui')

                bb.AlwaysOnTop = true
                bb.Size = UDim2.new(0, 150, 0, 40)
                bb.ExtentsOffset = Vector3.new(0, 3, 0)
                bb.MaxDistance = State.Visuals.MaxDistance
                bb.Enabled = false
                bb.Parent = playerFolder

                local nameLbl = Instance.new('TextLabel')

                nameLbl.Size = UDim2.new(1, 0, 0.6, 0)
                nameLbl.TextColor3 = Color3.new(1, 1, 1)
                nameLbl.Font = Enum.Font.GothamBold
                nameLbl.TextSize = 14
                nameLbl.BackgroundTransparency = 1
                nameLbl.TextStrokeTransparency = 0.5
                nameLbl.Parent = bb

                local hpBg = Instance.new('Frame')

                hpBg.Position = UDim2.new(0.1, 0, 0.75, 0)
                hpBg.Size = UDim2.new(0.8, 0, 0.1, 0)
                hpBg.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
                hpBg.BorderSizePixel = 0
                hpBg.Parent = bb

                local hpInner = Instance.new('Frame')

                hpInner.Size = UDim2.new(1, 0, 1, 0)
                hpInner.BackgroundColor3 = Color3.new(0, 1, 0)
                hpInner.BorderSizePixel = 0
                hpInner.Parent = hpBg
                States.ESP_CACHE[player] = {
                    folder = playerFolder,
                    bb = bb,
                    name = nameLbl,
                    hp = hpInner,
                    lastUpdate = 0,
                }
            end

            function ESP.InitUI(tab, State)
                for k, v in pairs(Config)do
                    if State.Visuals[k] == nil then
                        State.Visuals[k] = v
                    end
                end

                tab:Section({
                    Title = 'Performance ESP',
                })
                tab:Toggle({
                    Title = 'loc:esp-toggle',
                    Desc = 'loc:esp-desc',
                    Icon = 'eye',
                    Value = State.Visuals.Enabled,
                    Callback = function(s)
                        State.Visuals.Enabled = s
                    end,
                })
                tab:Slider({
                    Title = 'loc:esp-dist',
                    Desc = 'loc:esp-dist-d',
                    Icon = 'ruler',
                    Step = 100,
                    Value = {
                        Min = 200,
                        Max = 10000,
                        Default = State.Visuals.MaxDistance,
                    },
                    Callback = function(v)
                        State.Visuals.MaxDistance = v
                    end,
                })
            end
            function ESP.Update(State, Utils)
                if not State.Visuals.Enabled then
                    if States.ESPFolder then
                        States.ESPFolder:Destroy()

                        States.ESPFolder = nil
                        States.ESP_CACHE = {}
                    end

                    return
                end
                if not States.ESPFolder then
                    States.ESPFolder = Instance.new('Folder')
                    States.ESPFolder.Name = States.FolderName
                    States.ESPFolder.Parent = game:GetService('CoreGui')

                    Players.PlayerRemoving:Connect(function(p)
                        if States.ESP_CACHE[p] then
                            pcall(function()
                                States.ESP_CACHE[p].folder:Destroy()
                            end)

                            States.ESP_CACHE[p] = nil
                        end
                    end)
                end

                local camPos = Camera.CFrame.Position
                local now = os.clock()

                for _, p in pairs(Players:GetPlayers())do
                    if p == LocalPlayer then
                        continue
                    end

                    local data = States.ESP_CACHE[p]

                    if not data then
                        SetupPlayerESP(p, State)

                        continue
                    end
                    if now - data.lastUpdate < 0.066 then
                        continue
                    end

                    data.lastUpdate = now

                    local char = p.Character
                    local root = char and char:FindFirstChild('HumanoidRootPart')
                    local hum = char and char:FindFirstChildOfClass('Humanoid')

                    if root and hum and hum.Health > 0 then
                        local dist = (root.Position - camPos).Magnitude

                        if dist <= State.Visuals.MaxDistance then
                            data.bb.Enabled = true
                            data.bb.Adornee = root

                            local _, teamColor = GetTeamData(p)

                            data.name.Text = p.DisplayName:upper()
                            data.name.TextColor3 = teamColor

                            local hp = math.clamp(hum.Health / hum.MaxHealth, 0, 1)

                            data.hp.Size = UDim2.new(hp, 0, 1, 0)
                            data.hp.BackgroundColor3 = Color3.fromHSV(hp * 0.33, 1, 1)
                        else
                            data.bb.Enabled = false
                        end
                    else
                        data.bb.Enabled = false
                    end
                end
            end

            return ESP
        end

        function __DARKLUA_BUNDLE_MODULES.u(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.u

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.u = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Movement = {}
            local UIS = game:GetService('UserInputService')
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local Camera = workspace.CurrentCamera
            local Config = {
                DashEnabled = true,
                DashForce = 120,
                DashCooldown = 0.35,
                SprintEnabled = true,
                DoubleJump = true,
                Bhop = false,
                AntiFall = true,
                RollEnabled = true,
                RollForce = 50,
                NoFallDamage = true,
            }
            local States = {
                isSprinting = false,
                bhopHeld = false,
                dashCooldown = false,
                lastDoubleJump = 0,
                baseFOV = 70,
                hasDoubleJumped = false,
            }
            local RollService = nil
            local RollCooldown = false

            local function FindRollService()
                for _, v in pairs(getgc())do
                    if type(v) == 'table' and rawget(v, 'isPlayerRolling') and type(rawget(v, 'isPlayerRolling')) == 'function' then
                        return v
                    end
                end

                return nil
            end
            local function DoRoll(State)
                if RollCooldown or not State.Movement.RollEnabled then
                    return
                end

                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')
                local hrp = char and char:FindFirstChild('HumanoidRootPart')

                if not hrp or not hum or hum.Health <= 0 then
                    return
                end

                RollCooldown = true

                if not RollService then
                    pcall(function()
                        local Module = game:GetService('ReplicatedStorage'):FindFirstChild('Module')

                        if Module then
                            local mrs = Module:FindFirstChild('MovementRollService')

                            if mrs then
                                RollService = require(mrs)
                            end
                        end
                    end)
                end
                if not RollService then
                    pcall(function()
                        RollService = FindRollService()
                    end)
                end

                local rolledNative = false

                if RollService then
                    pcall(function()
                        for _, fnName in ipairs({
                            'requestRoll',
                            'startRoll',
                            'beginRoll',
                            'doRoll',
                            'roll',
                            'onRoll',
                        })do
                            local fn = rawget(RollService, fnName)

                            if fn and type(fn) == 'function' then
                                fn(RollService, LocalPlayer)

                                rolledNative = true

                                return
                            end
                        end
                    end)
                end
                if not rolledNative then
                    local moveDir = hrp.CFrame.LookVector

                    if UIS:IsKeyDown(Enum.KeyCode.S) then
                        moveDir = -hrp.CFrame.LookVector
                    elseif UIS:IsKeyDown(Enum.KeyCode.A) then
                        moveDir = -hrp.CFrame.RightVector
                    elseif UIS:IsKeyDown(Enum.KeyCode.D) then
                        moveDir = hrp.CFrame.RightVector
                    end

                    for _, child in ipairs(hrp:GetChildren())do
                        if child.Name == 'JES_Roll' then
                            child:Destroy()
                        end
                    end

                    pcall(function()
                        local rs = game:GetService('ReplicatedStorage')
                        local remote = rs:FindFirstChild('ReplicateMovementRollRemote')

                        if remote then
                            remote:FireServer()
                        end
                    end)

                    local rollForce = State.Movement.RollForce or 50
                    local bv = Instance.new('BodyVelocity')

                    bv.Name = 'JES_Roll'
                    bv.MaxForce = Vector3.new(1e5, 2e4, 1e5)
                    bv.Velocity = moveDir * rollForce
                    bv.Parent = hrp

                    task.delay(0.35, function()
                        if bv.Parent then
                            bv:Destroy()
                        end
                    end)
                    pcall(function()
                        local animator = hum:FindFirstChildOfClass('Animator')

                        if not animator then
                            return
                        end

                        local rollAnim = Instance.new('Animation')

                        rollAnim.AnimationId = 'rbxassetid://3716468774'

                        local track = animator:LoadAnimation(rollAnim)

                        track.Priority = Enum.AnimationPriority.Action4

                        track:Play(0.05, 1, 1.6)
                        track.Stopped:Once(function()
                            rollAnim:Destroy()
                        end)

                        local sound = Instance.new('Sound')

                        sound.SoundId = 'rbxassetid://13621046723'
                        sound.Volume = 0.5
                        sound.Parent = hrp

                        sound:Play()
                        game:GetService('Debris'):AddItem(sound, 2)
                    end)
                end

                task.delay(0.8, function()
                    RollCooldown = false
                end)
            end
            local function DoDoubleJump(State)
                if not State.Movement.DoubleJump or States.hasDoubleJumped then
                    return
                end

                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')
                local hrp = char and char:FindFirstChild('HumanoidRootPart')

                if not hrp or not hum or hum.FloorMaterial ~= Enum.Material.Air then
                    return
                end

                States.hasDoubleJumped = true
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 50, hrp.AssemblyLinearVelocity.Z)
            end

            function Movement.InitUI(tab, State)
                for k, v in pairs(Config)do
                    if State.Movement[k] == nil then
                        State.Movement[k] = v
                    end
                end

                tab:Section({
                    Title = 'Dynamic Thrusters',
                })
                tab:Toggle({
                    Title = 'loc:mov-dash',
                    Desc = 'loc:mov-dash-d',
                    Icon = 'zap',
                    Value = State.Movement.DashEnabled,
                    Callback = function(s)
                        State.Movement.DashEnabled = s
                    end,
                })
                tab:Slider({
                    Title = 'loc:mov-dash-f',
                    Desc = 'loc:mov-dash-f-d',
                    Icon = 'gauge',
                    Step = 5,
                    Value = {
                        Min = 40,
                        Max = 300,
                        Default = State.Movement.DashForce,
                    },
                    Callback = function(v)
                        State.Movement.DashForce = v
                    end,
                })
                tab:Slider({
                    Title = 'loc:mov-dash-c',
                    Desc = 'loc:mov-dash-c-d',
                    Icon = 'clock',
                    Step = 0.05,
                    Value = {
                        Min = 0,
                        Max = 2,
                        Default = State.Movement.DashCooldown,
                    },
                    Callback = function(v)
                        State.Movement.DashCooldown = v
                    end,
                })
                tab:Section({
                    Title = 'Combat Mobility',
                })
                tab:Toggle({
                    Title = 'Rolling (Ctrl)',
                    Desc = 'Press Ctrl to roll in your move direction with animation.',
                    Icon = 'rotate-cw',
                    Value = State.Movement.RollEnabled,
                    Callback = function(s)
                        State.Movement.RollEnabled = s
                    end,
                })
                tab:Slider({
                    Title = 'Roll Force',
                    Desc = 'How far the roll pushes you. Higher = more distance.',
                    Icon = 'move',
                    Step = 5,
                    Value = {
                        Min = 20,
                        Max = 200,
                        Default = State.Movement.RollForce,
                    },
                    Callback = function(v)
                        State.Movement.RollForce = v
                    end,
                })
                tab:Section({
                    Title = 'Athletic Mastery',
                })
                tab:Toggle({
                    Title = 'loc:mov-sprint',
                    Desc = 'loc:mov-sprint-d',
                    Icon = 'trending-up',
                    Value = State.Movement.SprintEnabled,
                    Callback = function(s)
                        State.Movement.SprintEnabled = s
                    end,
                })
                tab:Toggle({
                    Title = 'loc:mov-jump',
                    Desc = 'loc:mov-jump-d',
                    Icon = 'chevrons-up',
                    Value = State.Movement.DoubleJump,
                    Callback = function(s)
                        State.Movement.DoubleJump = s
                    end,
                })
                tab:Toggle({
                    Title = 'loc:mov-bhop',
                    Desc = 'loc:mov-bhop-d',
                    Icon = 'rabbit',
                    Value = State.Movement.Bhop,
                    Callback = function(s)
                        State.Movement.Bhop = s
                    end,
                })
                tab:Section({
                    Title = 'Survival',
                })
                tab:Toggle({
                    Title = 'No Fall Damage',
                    Desc = 
[[Prevents death from high falls by clamping velocity before landing.]],
                    Icon = 'shield',
                    Value = State.Movement.NoFallDamage,
                    Callback = function(s)
                        State.Movement.NoFallDamage = s
                    end,
                })
                tab:Toggle({
                    Title = 'loc:mov-fall',
                    Desc = 'loc:mov-fall-d',
                    Icon = 'arrow-down',
                    Value = State.Movement.AntiFall,
                    Callback = function(s)
                        State.Movement.AntiFall = s
                    end,
                })
                UIS.InputBegan:Connect(function(input, gp)
                    if gp then
                        return
                    end
                    if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
                        DoRoll(State)
                    elseif input.KeyCode == Enum.KeyCode.Space then
                        DoDoubleJump(State)
                    end
                end)
            end
            function Movement.Update(State, Utils)
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')
                local hrp = char and char:FindFirstChild('HumanoidRootPart')

                if not hum or not hrp then
                    return
                end
                if State.Movement.SprintEnabled then
                    if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
                        hum.WalkSpeed = 24
                        Camera.FieldOfView = math.lerp(Camera.FieldOfView, States.baseFOV + 12, 0.1)
                    else
                        hum.WalkSpeed = 16
                        Camera.FieldOfView = math.lerp(Camera.FieldOfView, States.baseFOV, 0.1)
                    end
                end
                if State.Movement.Bhop and UIS:IsKeyDown(Enum.KeyCode.Space) then
                    if hum.FloorMaterial ~= Enum.Material.Air then
                        hum.Jump = true
                        States.hasDoubleJumped = false
                    end
                end
                if State.Movement.NoFallDamage then
                    local vel = hrp.AssemblyLinearVelocity

                    if vel.Y < -50 then
                        local rayParams = RaycastParams.new()

                        rayParams.FilterType = Enum.RaycastFilterType.Exclude
                        rayParams.FilterDescendantsInstances = {char}

                        local result = workspace:Raycast(hrp.Position, Vector3.new(0, 
-8, 0), rayParams)

                        if result then
                            hrp.AssemblyLinearVelocity = Vector3.new(vel.X, -15, vel.Z)
                        end
                    end
                end
                if State.Movement.AntiFall and hrp.AssemblyLinearVelocity.Y < -85 then
                    hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 
-28, hrp.AssemblyLinearVelocity.Z)
                end
                if hum.FloorMaterial ~= Enum.Material.Air then
                    States.hasDoubleJumped = false
                end
            end

            return Movement
        end

        function __DARKLUA_BUNDLE_MODULES.v(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.v

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.v = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local HookManager = {}
            local Hooks = {
                Namecall = {},
                Index = {},
            }
            local RecursionGuard = {}
            local Logger = nil

            function HookManager.RegisterNamecall(id, callback)
                Hooks.Namecall[id] = callback
            end
            function HookManager.RegisterIndex(id, callback) end
            function HookManager.Init()
                Logger = __DARKLUA_BUNDLE_MODULES.a()

                local mt = getrawmetatable(game)
                local oldNamecall = mt.__namecall

                setreadonly(mt, false)

                mt.__namecall = newcclosure(function(self, ...)
                    local currentThread = coroutine.running()

                    if RecursionGuard[currentThread] then
                        return oldNamecall(self, ...)
                    end

                    local method = getnamecallmethod()
                    local isTargetMethod = (method == 'FireServer' or method:find('Raycast') or method:find('Ray'))

                    if not isTargetMethod then
                        return oldNamecall(self, ...)
                    end

                    local argCount = select('#', ...)
                    local args = {...}

                    RecursionGuard[currentThread] = true

                    local success, result = pcall(function()
                        for id, cb in pairs(Hooks.Namecall)do
                            local res = cb(self, method, args, argCount)

                            if res and res.isReturn then
                                return res
                            elseif res and res.isChangeArgs then
                                args = res.args or args
                                argCount = res.argCount or argCount
                            end
                        end

                        return nil
                    end)

                    RecursionGuard[currentThread] = nil

                    if success and result then
                        return unpack(result.values or {}, 1, result.valueCount or #(result.values or {}))
                    end

                    return oldNamecall(self, unpack(args, 1, argCount))
                end)

                setreadonly(mt, true)
                print('\u{1f6e1}\u{fe0f} [JES-CORE] HookManager v3.5 initialized (Namecall-Only, Zero Interference).')
            end

            return HookManager
        end

        function __DARKLUA_BUNDLE_MODULES.w(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.w

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.w = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Aimbot = {}
            local UIS = game:GetService('UserInputService')
            local Players = game:GetService('Players')
            local CollectionService = game:GetService('CollectionService')
            local ReplicatedStorage = game:GetService('ReplicatedStorage')
            local LocalPlayer = Players.LocalPlayer
            local Camera = workspace.CurrentCamera
            local Config = {
                Enabled = false,
                ToggleKey = 'T',
                TargetPart = 'Head',
                Accuracy = 100,
                MaxRange = 600,
                FreezeNpcs = false,
            }
            local States = {
                isHooked = false,
                CurrentTarget = nil,
                NpcCache = {},
                LastTargetUpdate = 0,
                LastNpcUpdate = 0,
            }
            local PASSIVE_TOOLS = {
                ['Keycard'] = true,
                ['Donut'] = true,
                ['Energy Drink'] = true,
                ['Briefcase'] = true,
                ['C4'] = true,
                ['SpikeStrip'] = true,
                ['Binoculars'] = true,
                ['Flashlight'] = true,
                ['Glider'] = true,
            }

            local function IsHoldingWeapon()
                local char = LocalPlayer.Character
                local tool = char and char:FindFirstChildOfClass('Tool')

                if tool then
                    return not PASSIVE_TOOLS[tool.Name]
                end

                return false
            end
            local function UpdateNpcCache()
                local newCache = {}

                pcall(function()
                    local npcFolder = workspace:FindFirstChild('NPCs') or workspace:FindFirstChild('GuardFolder')

                    if npcFolder then
                        for _, npc in ipairs(npcFolder:GetChildren())do
                            if npc:FindFirstChildOfClass('Humanoid') then
                                table.insert(newCache, npc)
                            end
                        end
                    end

                    for _, npc in ipairs(CollectionService:GetTagged('NPC'))do
                        if not npcFolder or not npc:IsDescendantOf(npcFolder) then
                            table.insert(newCache, npc)
                        end
                    end
                    for _, npc in ipairs(CollectionService:GetTagged('MansionBossNPC'))do
                        table.insert(newCache, npc)
                    end
                end)

                States.NpcCache = newCache
            end
            local function IsEnemy(player)
                if not player or player == LocalPlayer then
                    return false
                end

                local myTeam = LocalPlayer.Team
                local theirTeam = player.Team

                if not myTeam or not theirTeam then
                    return true
                end

                local myTeamName = myTeam.Name:lower()
                local theirTeamName = theirTeam.Name:lower()

                if myTeamName:find('crim') or myTeamName:find('prisoner') then
                    return theirTeamName:find('police') or theirTeamName:find('cop') or theirTeamName:find('guard')
                end
                if myTeamName:find('police') or myTeamName:find('cop') then
                    return theirTeamName:find('crim') or theirTeamName:find('prisoner')
                end

                return myTeam ~= theirTeam
            end
            local function GetClosestTarget(State)
                local now = os.clock()

                if now - States.LastTargetUpdate < 0.05 then
                    return States.CurrentTarget
                end

                States.LastTargetUpdate = now

                local closest = nil
                local shortestDist = math.huge
                local localHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                if not localHrp then
                    return nil
                end

                local myPos = localHrp.Position
                local maxRange = State.Combat.MaxRange or 600
                local targetPartName = State.Combat.TargetPart or 'Head'

                local function Scan(char, isPlayer, playerObj)
                    if not char or not char.Parent then
                        return
                    end

                    local hum = char:FindFirstChildOfClass('Humanoid')

                    if not hum or hum.Health <= 0 then
                        return
                    end
                    if isPlayer and playerObj then
                        if not IsEnemy(playerObj) then
                            return
                        end
                    end

                    local targetPart = char:FindFirstChild(targetPartName) or char:FindFirstChild('Head') or char:FindFirstChild('HumanoidRootPart')

                    if not targetPart then
                        return
                    end

                    local dist = (targetPart.Position - myPos).Magnitude

                    if dist < maxRange and dist < shortestDist then
                        closest = targetPart
                        shortestDist = dist
                    end
                end

                for _, p in ipairs(Players:GetPlayers())do
                    if p.Character then
                        Scan(p.Character, true, p)
                    end
                end
                for _, npc in ipairs(States.NpcCache)do
                    Scan(npc, false, nil)
                end

                States.CurrentTarget = closest

                return closest
            end
            local function FreezeNpcs()
                local now = os.clock()

                if not States.LastNpcUpdate or now - States.LastNpcUpdate > 0.5 then
                    States.LastNpcUpdate = now

                    local localHrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                    if localHrp then
                        for _, npc in ipairs(States.NpcCache)do
                            local hum = npc:FindFirstChildOfClass('Humanoid')
                            local root = npc:FindFirstChild('HumanoidRootPart')

                            if hum and root and (root.Position - localHrp.Position).Magnitude < 60 then
                                hum.PlatformStand = true
                                root.Anchored = true
                            end
                        end
                    end
                end
            end

            function Aimbot.RegisterHooksAsync(State)
                if States.isHooked then
                    return
                end

                States.isHooked = true

                pcall(function()
                    local gamePath = ReplicatedStorage:FindFirstChild('Game')

                    if not gamePath then
                        gamePath = ReplicatedStorage:WaitForChild('Game', 3)
                    end
                    if not gamePath then
                        return
                    end

                    task.wait()

                    local shopPath = gamePath:FindFirstChild('GunShop')

                    if not shopPath then
                        shopPath = gamePath:WaitForChild('GunShop', 3)
                    end
                    if not shopPath then
                        return
                    end

                    task.wait()

                    local utilsModule = shopPath:FindFirstChild('GunUtils')

                    if not utilsModule then
                        utilsModule = shopPath:WaitForChild('GunUtils', 3)
                    end
                    if not utilsModule then
                        return
                    end

                    local GunUtils = require(utilsModule)

                    if GunUtils and GunUtils.getBulletDirection then
                        local oldGetDirection = GunUtils.getBulletDirection

                        GunUtils.getBulletDirection = function(
                            tip,
                            dir,
                            spread,
                            ...
                        )
                            if State.Combat.Enabled and States.CurrentTarget then
                                local roll = math.random(1, 100)

                                if roll <= (State.Combat.Accuracy or 100) then
                                    local targetPart = States.CurrentTarget

                                    if targetPart and targetPart.Parent then
                                        local originPos = nil

                                        if typeof(tip) == 'Instance' then
                                            if tip:IsA('BasePart') then
                                                originPos = tip.Position
                                            elseif tip:IsA('Attachment') then
                                                originPos = tip.WorldPosition
                                            end
                                        elseif typeof(tip) == 'Vector3' then
                                            originPos = tip
                                        end
                                        if not originPos then
                                            local char = LocalPlayer.Character

                                            originPos = (char and char:FindFirstChild('HumanoidRootPart') and char.HumanoidRootPart.Position) or Camera.CFrame.Position
                                        end

                                        local newDir = (targetPart.Position - originPos).Unit

                                        return newDir
                                    end
                                end
                            end

                            return oldGetDirection(tip, dir, spread, ...)
                        end

                        print('\u{1f3af} [JES-COMBAT] GunUtils:getBulletDirection hook injected.')
                    end
                end)
                task.wait()

                local BulletEmitter = nil

                pcall(function()
                    local gamePath = ReplicatedStorage:FindFirstChild('Game')

                    if not gamePath then
                        return
                    end

                    local itemSystemPath = gamePath:FindFirstChild('ItemSystem')

                    if not itemSystemPath then
                        itemSystemPath = gamePath:WaitForChild('ItemSystem', 3)
                    end
                    if not itemSystemPath then
                        return
                    end

                    local emitterModule = itemSystemPath:FindFirstChild('BulletEmitter')

                    if not emitterModule then
                        emitterModule = itemSystemPath:WaitForChild('BulletEmitter', 3)
                    end
                    if emitterModule then
                        BulletEmitter = require(emitterModule)
                    end
                end)
                task.wait()

                if BulletEmitter and BulletEmitter.Emit then
                    local oldEmit = BulletEmitter.Emit

                    BulletEmitter.Emit = newcclosure(function(
                        self,
                        origin,
                        direction,
                        speed,
                        ...
                    )
                        if State.Combat.Enabled and States.CurrentTarget then
                            local roll = math.random(1, 100)

                            if roll <= (State.Combat.Accuracy or 100) then
                                local targetPart = States.CurrentTarget

                                if targetPart and targetPart.Parent then
                                    local newDir = (targetPart.Position - origin).Unit

                                    return oldEmit(self, origin, newDir, speed, 
...)
                                end
                            end
                        end

                        return oldEmit(self, origin, direction, speed, ...)
                    end)

                    print('\u{1f3af} [JES-COMBAT] BulletEmitter:Emit hook injected via require().')
                else
                    pcall(function()
                        for _, v in pairs(getgc(true))do
                            if type(v) == 'table' and rawget(v, 'Emit') and rawget(v, 'new') then
                                local oldEmit = v.Emit

                                v.Emit = newcclosure(function(
                                    self,
                                    origin,
                                    direction,
                                    speed,
                                    ...
                                )
                                    if State.Combat.Enabled and States.CurrentTarget then
                                        local roll = math.random(1, 100)

                                        if roll <= (State.Combat.Accuracy or 100) then
                                            local targetPart = States.CurrentTarget

                                            if targetPart and targetPart.Parent then
                                                local newDir = (targetPart.Position - origin).Unit

                                                return oldEmit(self, origin, newDir, speed, 
...)
                                            end
                                        end
                                    end

                                    return oldEmit(self, origin, direction, speed, 
...)
                                end)

                                print('\u{1f3af} [JES-COMBAT] BulletEmitter:Emit hook injected via GC.')

                                break
                            end
                        end
                    end)
                end

                task.wait()

                local HookManager = __DARKLUA_BUNDLE_MODULES.w()

                HookManager.RegisterNamecall('SilentAimRaycast', function(
                    self,
                    method,
                    args,
                    argCount
                )
                    if not checkcaller() and State.Combat.Enabled and States.CurrentTarget then
                        local roll = math.random(1, 100)

                        if roll <= (State.Combat.Accuracy or 100) then
                            local targetPart = States.CurrentTarget

                            if targetPart and targetPart.Parent then
                                if method == 'Raycast' then
                                    local origin = args[1]
                                    local direction = args[2]

                                    if typeof(origin) == 'Vector3' and typeof(direction) == 'Vector3' then
                                        local newDirection = (targetPart.Position - origin).Unit * direction.Magnitude

                                        args[2] = newDirection

                                        return {
                                            isChangeArgs = true,
                                            args = args,
                                            argCount = argCount,
                                        }
                                    end
                                elseif method == 'FindPartOnRay' or method == 'FindPartOnRayWithIgnoreList' or method == 'FindPartOnRayWithWhitelist' then
                                    local ray = args[1]

                                    if typeof(ray) == 'Ray' then
                                        local origin = ray.Origin
                                        local direction = ray.Direction
                                        local newDirection = (targetPart.Position - origin).Unit * direction.Magnitude

                                        args[1] = Ray.new(origin, newDirection)

                                        return {
                                            isChangeArgs = true,
                                            args = args,
                                            argCount = argCount,
                                        }
                                    end
                                end
                            end
                        end
                    end

                    return nil
                end)
                task.wait()
                pcall(function()
                    for _, v in pairs(getgc(true))do
                        if type(v) == 'table' and rawget(v, 'Shoot') and rawget(v, 'TransformLocalMousePosition') then
                            local old_transform = v.TransformLocalMousePosition

                            v.TransformLocalMousePosition = function(self, ...)
                                if State.Combat.Enabled and States.CurrentTarget and IsHoldingWeapon() then
                                    local roll = math.random(1, 100)

                                    if roll <= (State.Combat.Accuracy or 100) then
                                        local targetPart = States.CurrentTarget

                                        if targetPart then
                                            return targetPart.Position
                                        end
                                    end
                                end

                                return old_transform(self, ...)
                            end

                            break
                        end
                    end
                end)
                print('\u{1f3af} [JES-COMBAT] All Silent Aim hooks registered successfully.')
            end
            function Aimbot.InitUI(aimTab, npcTab, State)
                for k, v in pairs(Config)do
                    if State.Combat[k] == nil then
                        State.Combat[k] = v
                    end
                end

                aimTab:Toggle({
                    Title = 'Silent Aim (Tiro Silencioso)',
                    Desc = 
[[Redirecciona la trayectoria de los proyectiles y trazados de rayo directamente al objetivo.]],
                    Icon = 'crosshair',
                    Value = State.Combat.Enabled,
                    Callback = function(s)
                        State.Combat.Enabled = s
                    end,
                })
                aimTab:Keybind({
                    Title = 'Tecla de Activaci\u{f3}n',
                    Desc = 'Presiona esta tecla para alternar el Shot Assist.',
                    Icon = 'keyboard',
                    Value = State.Combat.ToggleKey,
                    Callback = function(k)
                        State.Combat.ToggleKey = k
                    end,
                })
                aimTab:Section({
                    Title = 'Personalizaci\u{f3}n',
                })
                aimTab:Dropdown({
                    Title = 'Parte del Cuerpo',
                    Desc = 'Selecciona la zona de impacto prioritaria de las balas.',
                    Icon = 'user',
                    Multi = false,
                    Options = {
                        'Head',
                        'Torso',
                    },
                    Value = State.Combat.TargetPart,
                    Callback = function(v)
                        State.Combat.TargetPart = v
                    end,
                })
                aimTab:Slider({
                    Title = 'Precisi\u{f3}n',
                    Desc = 
[[Probabilidad de que el tiro asistido impacte al enemigo (0% - 100%).]],
                    Icon = 'percent',
                    Step = 5,
                    Value = {
                        Min = 0,
                        Max = 100,
                        Default = State.Combat.Accuracy,
                    },
                    Callback = function(v)
                        State.Combat.Accuracy = v
                    end,
                })
                aimTab:Slider({
                    Title = 'Rango de Detecci\u{f3}n',
                    Desc = 'Rango m\u{e1}ximo en studs para redirigir las balas.',
                    Icon = 'ruler',
                    Step = 50,
                    Value = {
                        Min = 100,
                        Max = 1500,
                        Default = State.Combat.MaxRange,
                    },
                    Callback = function(v)
                        State.Combat.MaxRange = v
                    end,
                })
                npcTab:Toggle({
                    Title = 'Freeze NPCs',
                    Desc = 'Paraliza guardias cercanos',
                    Icon = 'snowflake',
                    Value = State.Combat.FreezeNpcs,
                    Callback = function(s)
                        State.Combat.FreezeNpcs = s
                    end,
                })
                task.spawn(function()
                    while true do
                        UpdateNpcCache()
                        task.wait(4)
                    end
                end)
            end
            function Aimbot.Update(State, Utils, dt)
                if not States.isHooked then
                    return
                end
                if State.Combat.FreezeNpcs then
                    FreezeNpcs()
                end

                local char = LocalPlayer.Character
                local isHolding = IsHoldingWeapon()
                local isSeated = char and char:FindFirstChild('Humanoid') and char.Humanoid.SeatPart ~= nil

                if not (isHolding or isSeated) or not State.Combat.Enabled then
                    States.CurrentTarget = nil

                    return
                end

                GetClosestTarget(State)
            end

            return Aimbot
        end

        function __DARKLUA_BUNDLE_MODULES.x(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.x

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.x = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Vehicles = {}
            local Players = game:GetService('Players')
            local LocalPlayer = Players.LocalPlayer
            local Config = {
                Enabled = false,
                InfiniteNitro = false,
                Speed = 250,
                Torque = 1,
                Brakes = 10,
                TurnSpeed = 1.5,
            }
            local States = {
                CachedVehicleTables = {},
                CurrentVehicleModel = nil,
                LastPhysicsUpdate = 0,
            }
            local NitroFieldNames = {
                'Nitro',
                'RocketFuel',
                'Fuel',
                'NitroAmount',
                'BoostFuel',
                'NitroMax',
                'NitroValue',
            }
            local LastState = nil

            local function SetupAttributeHook()
                local oldGetAttribute

                oldGetAttribute = hookmetamethod(game, '__index', function(
                    self,
                    key
                )
                    if not checkcaller() and key == 'GetAttribute' then
                        return function(self, attr)
                            if (attr == 'Nitro' or attr == 'RocketFuel' or attr == 'Fuel' or attr == 'NitroAmount') then
                                return 250
                            end

                            return oldGetAttribute(self, key)(self, attr)
                        end
                    end

                    return oldGetAttribute(self, key)
                end)
            end
            local function UpdateCache(State)
                local isEnabled = State.Vehicles.Enabled or State.Vehicles.InfiniteNitro

                if isEnabled then
                    local newCache = {}

                    for _, v in pairs(getgc(true))do
                        if type(v) == 'table' then
                            if rawget(v, 'Goal') or rawget(v, 'Progress') or rawget(v, 'Reward') or rawget(v, 'Contract') or rawget(v, 'Item') or rawget(v, 'Gun') then
                                continue
                            end

                            local hasNitro = false

                            for _, fn in ipairs(NitroFieldNames)do
                                if rawget(v, fn) ~= nil then
                                    hasNitro = true

                                    break
                                end
                            end

                            if (hasNitro or rawget(v, 'TopSpeed') ~= nil) and not rawget(v, 'IsEquipped') then
                                table.insert(newCache, v)
                            end
                        end
                    end

                    States.CachedVehicleTables = newCache
                end
            end
            local function ApplyPhysics(vehicle)
                if not vehicle or not vehicle.Parent then
                    return
                end

                pcall(function()
                    for _, part in ipairs(vehicle:GetDescendants())do
                        if part and part.Parent and part:IsA('BasePart') then
                            local n = part.Name:lower()

                            if n:find('disc') or n:find('prop') or n:find('blade') then
                                continue
                            end

                            part.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
                        end
                    end
                end)
            end
            local function EnforceNitroOnVehicle(vehicle)
                if not vehicle then
                    return
                end

                pcall(function()
                    local packet = vehicle:FindFirstChild('_Packet')

                    if packet then
                        for _, child in ipairs(packet:GetDescendants())do
                            if child:IsA('NumberValue') or child:IsA('IntValue') then
                                child.Value = 1000
                            end
                        end
                    end

                    for _, child in ipairs(vehicle:GetDescendants())do
                        if (child:IsA('NumberValue') or child:IsA('IntValue')) then
                            local n = child.Name:lower()

                            if n:find('nitro') or n:find('rocket') or n:find('fuel') then
                                child.Value = 1000
                            end
                        end
                    end
                    for _, attrName in ipairs(NitroFieldNames)do
                        vehicle:SetAttribute(attrName, 1000)
                    end
                end)
            end
            local function EnforceVehicleStates()
                pcall(function()
                    local rs = game:GetService('ReplicatedStorage')
                    local playerStates = rs:FindFirstChild('VehicleStates')

                    if playerStates then
                        local myState = playerStates:FindFirstChild(LocalPlayer.Name)

                        if myState then
                            for _, child in ipairs(myState:GetDescendants())do
                                if child:IsA('NumberValue') or child:IsA('IntValue') then
                                    local n = child.Name:lower()

                                    if n:find('nitro') or n:find('rocket') or n:find('fuel') then
                                        child.Value = 1000
                                    end
                                end
                            end
                        end
                    end
                end)
            end
            local function EnforceStats(State)
                if State.Vehicles.InfiniteNitro then
                    EnforceVehicleStates()
                end

                for _, v in ipairs(States.CachedVehicleTables)do
                    if State.Vehicles.InfiniteNitro then
                        for _, fn in ipairs(NitroFieldNames)do
                            if rawget(v, fn) ~= nil then
                                rawset(v, fn, 1000)
                            end
                        end
                    end
                    if State.Vehicles.Enabled then
                        if rawget(v, 'TopSpeed') then
                            rawset(v, 'TopSpeed', State.Vehicles.Speed)
                        end
                        if rawget(v, 'Torque') then
                            rawset(v, 'Torque', State.Vehicles.Torque * 10000)
                        end
                        if rawget(v, 'Brakes') then
                            rawset(v, 'Brakes', State.Vehicles.Brakes * 5000)
                        end
                        if rawget(v, 'TurnSpeed') then
                            rawset(v, 'TurnSpeed', State.Vehicles.TurnSpeed)
                        end
                        if rawget(v, 'Drift') then
                            rawset(v, 'Drift', 0)
                        end
                    end
                end

                if State.Vehicles.InfiniteNitro and States.CurrentVehicleModel then
                    EnforceNitroOnVehicle(States.CurrentVehicleModel)
                end
            end

            function Vehicles.Init(State)
                pcall(SetupAttributeHook)
            end
            function Vehicles.InitUI(tab, State)
                for k, v in pairs(Config)do
                    if State.Vehicles[k] == nil then
                        State.Vehicles[k] = v
                    end
                end

                tab:Toggle({
                    Title = 'loc:veh-toggle',
                    Desc = 'loc:veh-desc',
                    Icon = 'car',
                    Value = State.Vehicles.Enabled,
                    Callback = function(s)
                        State.Vehicles.Enabled = s

                        if s then
                            task.spawn(function()
                                UpdateCache(State)
                            end)
                        end
                    end,
                })
                tab:Toggle({
                    Title = 'loc:nitro-inf',
                    Desc = 'loc:nitro-desc',
                    Icon = 'flame',
                    Value = State.Vehicles.InfiniteNitro,
                    Callback = function(s)
                        State.Vehicles.InfiniteNitro = s

                        if s then
                            pcall(function()
                                LocalPlayer:SetAttribute('RocketFuel', 250)
                                LocalPlayer:SetAttribute('Nitro', 250)
                            end)
                            task.spawn(function()
                                UpdateCache(State)
                            end)
                            print('\u{1f525} [JES-VEH] Infinite Nitro activated - immediate scan triggered')
                        end
                    end,
                })
                tab:Section({
                    Title = 'Performance Specs',
                })
                tab:Slider({
                    Title = 'loc:veh-speed',
                    Desc = 'loc:veh-speed-d',
                    Icon = 'gauge',
                    Step = 10,
                    Value = {
                        Min = 100,
                        Max = 1000,
                        Default = State.Vehicles.Speed,
                    },
                    Callback = function(v)
                        State.Vehicles.Speed = v
                    end,
                })
                tab:Slider({
                    Title = 'loc:veh-torque',
                    Desc = 'loc:veh-torque-d',
                    Icon = 'activity',
                    Step = 0.5,
                    Value = {
                        Min = 1,
                        Max = 10,
                        Default = State.Vehicles.Torque,
                    },
                    Callback = function(v)
                        State.Vehicles.Torque = v
                    end,
                })
                tab:Slider({
                    Title = 'loc:veh-brakes',
                    Desc = 'loc:veh-brakes-d',
                    Icon = 'disc',
                    Step = 1,
                    Value = {
                        Min = 1,
                        Max = 100,
                        Default = State.Vehicles.Brakes,
                    },
                    Callback = function(v)
                        State.Vehicles.Brakes = v
                    end,
                })
                tab:Slider({
                    Title = 'loc:veh-turn',
                    Desc = 'loc:veh-turn-d',
                    Icon = 'rotate-cw',
                    Step = 0.1,
                    Value = {
                        Min = 1,
                        Max = 5,
                        Default = State.Vehicles.TurnSpeed,
                    },
                    Callback = function(v)
                        State.Vehicles.TurnSpeed = v
                    end,
                })
                task.spawn(function()
                    while true do
                        task.wait(0.1)

                        if LastState and LastState.Vehicles and LastState.Vehicles.InfiniteNitro then
                            pcall(function()
                                LocalPlayer:SetAttribute('RocketFuel', 250)
                                LocalPlayer:SetAttribute('Nitro', 250)
                                EnforceStats(LastState)
                            end)
                        end
                    end
                end)
            end
            function Vehicles.Update(State, Utils)
                LastState = State

                if State.Vehicles.InfiniteNitro then
                    LocalPlayer:SetAttribute('RocketFuel', 250)
                    LocalPlayer:SetAttribute('Nitro', 250)
                end

                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')
                local seat = hum and hum.SeatPart
                local vehicle = seat and seat.Parent

                if vehicle ~= States.CurrentVehicleModel then
                    States.CurrentVehicleModel = vehicle

                    if vehicle then
                        if State.Vehicles.Enabled then
                            ApplyPhysics(vehicle)
                        end
                        if State.Vehicles.Enabled or State.Vehicles.InfiniteNitro then
                            task.spawn(function()
                                task.wait(0.5)
                                UpdateCache(State)
                            end)
                        end
                    end
                end
                if State.Vehicles.Enabled or State.Vehicles.InfiniteNitro then
                    if State.Vehicles.InfiniteNitro then
                        EnforceStats(State)
                    end
                    if State.Vehicles.Enabled then
                        local now = os.clock()

                        if now - States.LastPhysicsUpdate < 0.1 then
                            return
                        end

                        States.LastPhysicsUpdate = now

                        EnforceStats(State)
                    end
                end
            end

            return Vehicles
        end

        function __DARKLUA_BUNDLE_MODULES.y(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.y

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.y = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Docs = {}

            return Docs
        end

        function __DARKLUA_BUNDLE_MODULES.z(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.z

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.z = v
            end

            return v.c
        end
    end
end

local Logger = __DARKLUA_BUNDLE_MODULES.a()

Logger.Init()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local State = __DARKLUA_BUNDLE_MODULES.b()
local Bootloader = __DARKLUA_BUNDLE_MODULES.c()

Bootloader.Load(State)

local Utils = __DARKLUA_BUNDLE_MODULES.d()
local UI = __DARKLUA_BUNDLE_MODULES.t()
local Visuals = __DARKLUA_BUNDLE_MODULES.u()
local Movement = __DARKLUA_BUNDLE_MODULES.v()
local Combat = __DARKLUA_BUNDLE_MODULES.x()
local Robberies = __DARKLUA_BUNDLE_MODULES.s()
local Vehicles = __DARKLUA_BUNDLE_MODULES.y()
local HookManager = __DARKLUA_BUNDLE_MODULES.w()
local Docs = __DARKLUA_BUNDLE_MODULES.z()

task.spawn(function()
    HookManager.Init()
    task.wait()
    task.spawn(function()
        Combat.RegisterHooksAsync(State)
    end)
    task.wait()
    Vehicles.Init(State)
    task.wait()
    Robberies.Init(State, Utils)
    task.wait()

    local WindUI, Window, Tabs = UI.Init(State)

    Utils.SetWindUI(WindUI)
    task.wait()
    Visuals.InitUI(Tabs.ESP, State)
    task.wait()
    Movement.InitUI(Tabs.Movement, State)
    task.wait()
    Combat.InitUI(Tabs.Combat, Tabs.NPCs, State)
    task.wait()
    Robberies.InitUI(Tabs.Robberies, State)
    Vehicles.InitUI(Tabs.Vehicles, State)
    task.wait()
    RunService.RenderStepped:Connect(function(dt)
        pcall(function()
            Visuals.Update(State, Utils)
            Movement.Update(State, Utils)
            Combat.Update(State, Utils, dt)
        end)
    end)
    task.spawn(function()
        while task.wait(0.5) do
            pcall(function()
                Robberies.Update(State, Utils)
                Vehicles.Update(State, Utils)
            end)
        end
    end)
    Utils.Notify('JLC Suite v3.0.0', 
[[Nexus Architecture loaded. All systems operational. Press [J] for Menu.]], 6)
end)

