
--[[
    ████████╗██╗  ██╗██████╗ ██╗██╗  ██╗███╗   ███╗██╗███╗   ██╗
    ╚══██╔══╝██║  ██║██╔══██╗██║╚██╗██╔╝████╗ ████║██║████╗  ██║
       ██║   ███████║██████╔╝██║ ╚███╔╝ ██╔████╔██║██║██╔██╗ ██║
       ██║   ██╔══██║██╔══██╗██║ ██╔██╗ ██║╚██╔╝██║██║██║╚██╗██║
       ██║   ██║  ██║██║  ██║██║██╔╝ ██╗██║ ╚═╝ ██║██║██║ ╚████║
       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝
]]--

if Thrixmin then
    warn("Thrixmin has already been ran!")
    return
else
    getgenv().Thrixmin = true
end

--[[
    ██████╗  ██████╗  ██████╗██╗   ██╗███╗   ███╗███████╗███╗   ██╗████████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
    ██╔══██╗██╔═══██╗██╔════╝██║   ██║████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
    ██║  ██║██║   ██║██║     ██║   ██║██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████║   ██║   ██║██║   ██║██╔██╗ ██║
    ██║  ██║██║   ██║██║     ██║   ██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
    ██████╔╝╚██████╔╝╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                                               
    ⮚ Functions 
        • AddFunction - Adds a function to the admin.
        • GetPlayer - Returns a player of a shortend string of the player's name.
        • swait - A wait function that is ~10 times faster than a normal wait.

    ⮚ Commands
        • prefix - Sets you command prefix. (Ex: "-prefix ;")
        • rejoin - Makes your player rejoin. (Ex: "-rejoin", Aliases: "rj")
        • posrj - Makes your player rejoin and teleport to your current position (Ex: "-posrj")
        • goto - Teleports your player to the selected player. (Ex: "-goto player", Aliases: "tp")
        • gameteleport - Teleports you to the selected game. (Ex: "-gameteleport 5100950559", Aliases: "gametp")
        • report - Reports the chosen player a chosen amount of times. (Ex: "-report playername 100")
        • waypoint - Teleports you to the selected waypoint. (Ex: "-towaypoint waypoint", Aliases: "wp")
        • setwaypoint - Creates a waypoint at your current location. (Ex: "-setwaypoint waypoint", Aliases: "setwp")
        • deletewaypoint - Deletes the selected waypoint. (Ex: "-deletewaypoint waypoint", Aliases: "delwp")
        • walkspeed - Sets your character's walkspeed to the chosen amount. (Ex: "-walkspeed 50", Aliases: "ws")
        • jumppower - Sets your character's jumppower to the chosen amount. (Ex: "-jumppower 500", Aliases: "jp")
        • fireclickdetectors - Fires all click detectors in the workspace. (Ex: "-firetouchinterests", Aliases: "firecd")
        • firetouchinterests - Fires all touch interests in the workspace. (Ex: "-firetouchinterests", Aliases: "firetouch")
        • fireproximityprompts - Fires all proximity prompts in the workspace. (Ex: "-fireproximityprompts", Aliases: "fireprox")
        • syncanim - Synchronizes your current animation with another players. (Ex: "-syncanim playername", Aliases: "sync")
        • gravity - Sets the workspace's gravity to the chosen amount. (Ex: "-gravity 10", Aliases: "grav")
        • hipheight - Sets you hip height to the chosen amount. (Ex: "-hipheight 10", Aliases: "height")
        • sit - Makes your player sit down. (Ex: "-sit")
        • unsit - Makes your player stand up. (Ex: "-unsit")
        • platformstand - Stuns your player. (Ex: "-platformstand", Aliases: "stun")
        • unplatformstand - Unstuns your player. (Ex: "-unplatformstand", Aliases: "unstun")
        • freeze - Freezes your player in place. (Ex: "-freeze", Aliases: "fr")
        • unfreeze - Unfreezes your player in place. (Ex: "-unfreeze", Aliases: "unfr")
        • timeofday - Sets the time to the selected time. (Ex: "-timeofday 0", Aliases: "time")
        • end - Stops the admin from running. (Ex: "-end", Aliases: "quit")
        • install - Installs the selected plugin from github. (Ex: "-install Plugin", Aliases: "installplugin")
        • uninstall - Uninstalls the selected plugin from github. (Ex: "-install Plugin", Aliases: "uninstallplugin")
        • Command - [Command Description] (Ex: "-Command Example", Aliases: "Aliases")
	• Command - [Command Description] (Ex: "-Command Example", Aliases: "Aliases")
	• Command - [Command Description] (Ex: "-Command Example", Aliases: "Aliases")
]]--

--[[
    ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
    ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
    ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
    ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
    ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
]]--

local Settings = {
    ["Info"] = {
        ["Name"] = "Thrixmin",
        ["Version"] = "v1.2.0",
        ["Developer"] = "Bug#3680",
    },
    ["Debug"] = true,
    ["Thrix"] = {
        ["Settings"] = {
            ["Prefix"] = "-"
        },
        ["OutputTypes"] = {
              Output = {},
              SyntaxErrors = {}
        },
        ["Variables"] = {},
        ["Functions"] = {}
    }
}

if isfile("Thrixmin/Settings.json") then
    Settings["Thrix"]["Settings"] = game:GetService("HttpService"):JSONDecode(readfile("Thrixmin/Settings.json"))
else
    if not isfolder("Thrixmin") then
        makefolder("Thrixmin")
    end
    if not isfolder("Thrixmin/Plugins") then
        makefolder("Thrixmin/Plugins")
    end
    writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
end

--[[
    ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
    ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
    ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
    ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
     ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
      ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝
]]--

local Chat = game:GetService("Chat")
local Stats = game:GetService("Stats")
local Teams = game:GetService("Teams")
local Visit = game:GetService("Visit")
local Debris = game:GetService("Debris")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Geometry = game:GetService("Geometry")
local Lighting = game:GetService("Lighting")
local AdService = game:GetService("AdService")
local Selection = game:GetService("Selection")
local VRService = game:GetService("VRService")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local IXPService = game:GetService("IXPService")
local LogService = game:GetService("LogService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local StudioData = game:GetService("StudioData")
local HttpService = game:GetService("HttpService")
local StarterPack = game:GetService("StarterPack")
local TestService = game:GetService("TestService")
local TextService = game:GetService("TextService")
local AssetService = game:GetService("AssetService")
local BadgeService = game:GetService("BadgeService")
local CorePackages = game:GetService("CorePackages")
local GroupService = game:GetService("GroupService")
local TweenService = game:GetService("TweenService")
local ABTestService = game:GetService("ABTestService")
local FriendService = game:GetService("FriendService")
local HapticService = game:GetService("HapticService")
local InsertService = game:GetService("InsertService")
local JointsService = game:GetService("JointsService")
local NetworkClient = game:GetService("NetworkClient")
local PointsService = game:GetService("PointsService")
local PolicyService = game:GetService("PolicyService")
local ScriptContext = game:GetService("ScriptContext")
local SocialService = game:GetService("SocialService")
local StarterPlayer = game:GetService("StarterPlayer")
local CookiesService = game:GetService("CookiesService")
local GamepadService = game:GetService("GamepadService")
local PhysicsService = game:GetService("PhysicsService")
local SpawnerService = game:GetService("SpawnerService")
local ContentProvider = game:GetService("ContentProvider")
local GamePassService = game:GetService("GamePassService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TeleportService = game:GetService("TeleportService")
local AnalyticsService = game:GetService("AnalyticsService")
local AppStorageService = game:GetService("AppStorageService")
local CollectionService = game:GetService("CollectionService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local MemStorageService = game:GetService("MemStorageService")
local MessageBusService = game:GetService("MessageBusService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TouchInputService = game:GetService("TouchInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local PermissionsService = game:GetService("PermissionsService")
local LocalizationService = game:GetService("LocalizationService")
local MeshContentProvider = game:GetService("MeshContentProvider")
local NotificationService = game:GetService("NotificationService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local ContextActionService = game:GetService("ContextActionService")
local CSGDictionaryService = game:GetService("CSGDictionaryService")
local PlayerEmulatorService = game:GetService("PlayerEmulatorService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SolidModelContentProvider = game:GetService("SolidModelContentProvider")
local NonReplicatedCSGDictionaryService = game:GetService("NonReplicatedCSGDictionaryService")

local LocalPlayer = Players.LocalPlayer
local Character = Players.LocalPlayer.Character
local BackPack = Players.LocalPlayer.Backpack
local PlayerGui = Players.LocalPlayer.PlayerGui
local StarterGear = Players.LocalPlayer.StarterGear
local PlayerScripts = Players.LocalPlayer.PlayerScripts

local Mouse = LocalPlayer:GetMouse()
local Humanoid = Character.Humanoid
local HumanoidRootPart = Character.HumanoidRootPart

local oprint = print
local owarn = warn

local queue_on_teleport = queue_on_teleport or syn.queue_on_teleport

--[[
    ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
    ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
    █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
    ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
    ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
    ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
]]--

local function print(...)
    if not Settings.Debug then
        return false
    else
        oprint(...)
    end
end

local function warn(...)
    if not Settings.Debug then
        return false
    else
        owarn(...)
    end
end

local y = {}
game:GetService("RunService").Stepped:Connect(function()
	local c = os.clock()
	for i, d in next, y do
		local s = c - d[1]
		if s >= d[2] then
			y[i] = nil
			coroutine.resume(d[3], s, c)
		end
	end
end)
        
local function swait(t)
	local t = (type(t) ~= "number" or t < 0) and 0 or t
    table.insert(y, {os.clock(), t, coroutine.running()})
    return coroutine.yield()
end

local function ASCII(text, font)
    return game:HttpGet("https://artii.herokuapp.com/make?text=" .. text:gsub(" ", "+") .. "&font=" .. font)
end

local function GetPlayer(name)
    for i,v in next, game:GetService("Players"):GetChildren() do
        if v:IsA("Player") and string.lower(string.sub((v.Name), 1, #name)) == string.sub((string.lower(name)), 1, #name) or string.lower(string.sub((v.DisplayName), 1, #name)) == string.sub((string.lower(name)), 1, #name) then
            return v
        end
    end
    
    return false
end

Settings["Thrix"]["BuildFunctionOutput"] = function()
    local Output = {}
    Output.Output = {}
    Output.SyntaxErrors = {}
    Output.FunctionErrors = {}
    
    return Output
end
    
Settings["Thrix"]["AddFunction"] = function(FuncNames, FuncDesc, FuncExec, PluginName)
    local FuncOutput = Settings["Thrix"]["BuildFunctionOutput"]()
    if type(FuncNames) == "string" then
        FuncNames = {FuncNames}
    end
    
    if #FuncOutput.SyntaxErrors == 0 then
        for _,FuncName in next, FuncNames do
            Settings["Thrix"]["Functions"][FuncName] = {}
            local NewFunction = Settings["Thrix"]["Functions"][FuncName]
            NewFunction["Execute"] = function(self, args)
                self.Arguments = {
                    args
                }
                pcall(FuncExec, args)
            end
        end
        
        local PluginName = PluginName or "main"
        local CommandDocs = string.format("Imported %s from %s - %s ", FuncNames[1], PluginName, FuncDesc)
        if #FuncNames > 1 then
            table.remove(FuncNames, 1)
            CommandDocs = CommandDocs .. "(Aliases: \"" .. table.concat(FuncNames, "\", \"") .. "\")"
        end

        print(CommandDocs)

        return FuncOutput
    else
        return FunctionOutput
    end
end

--[[
    ███╗   ███╗ █████╗ ██╗███╗   ██╗
    ████╗ ████║██╔══██╗██║████╗  ██║
    ██╔████╔██║███████║██║██╔██╗ ██║
    ██║╚██╔╝██║██╔══██║██║██║╚██╗██║
    ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝
]]--
        
local function main()
    print("\n" .. ASCII(Settings["Info"]["Name"], "standard") .. "\n" .. ASCII(Settings["Info"]["Version"]:gsub("%.", " . "):gsub("v", "v "), "small"))
    print(string.format("Prefix - \"%s\"", Settings["Thrix"]["Settings"]["Prefix"]))
    
    local Source, Error = pcall(function()
        Settings["Thrix"].AddFunction({"goto", "tp"}, "Teleports your player to the selected player.", function(Args)
            spawn(function()
                LocalPlayer.Character.HumanoidRootPart.CFrame = GetPlayer(Args[2]).Character.HumanoidRootPart.CFrame
            end)
        end)
        
        Settings["Thrix"].AddFunction({"ruinreplication", "breaknet"}, "Breaks the selected players net.", function(Args)
            spawn(function()
                for _,v in next, GetPlayer(Args[2]).Character:GetDescendants() do
                    if v:IsA("Part") or v:IsA("BasePart") then
                        game:GetService("RunService").Heartbeat:Connect(function()
                    	    sethiddenproperty(v, "NetworkIsSleeping", true)
                    	end)
                    end
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"gameteleport", "gametp"}, "Teleports you to the selected game.", function(Args)
            spawn(function()
                game:GetService("TeleportService"):Teleport(Args[2], game.Players.LocalPlayer)
            end)
        end)
        
        Settings["Thrix"].AddFunction({"walkspeed", "ws"}, "Sets your character's walkspeed to the chosen amount.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.WalkSpeed = Args[2] or 16
            end)
        end)
        
        Settings["Thrix"].AddFunction({"jumppower", "jp"}, "Sets your character's jumppower to the chosen amount.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.JumpPower = Args[2] or 50
            end)
        end)

        Settings["Thrix"].AddFunction({"hipheight", "height"}, "Sets your hip height to the chosen amount.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.HipHeight = Args[2] or 2
            end)
        end)
        
        Settings["Thrix"].AddFunction({"gravity", "grav"}, "Sets the workspace's gravity to the chosen amount.", function(Args)
            spawn(function()
                game.Workspace.Gravity = Args[2] or 196.2
            end)
        end)

        Settings["Thrix"].AddFunction({"timeofday", "time"}, "Sets the time to the selected time.", function(Args)
            spawn(function()
                game.Lighting.ClockTime = Args[2] or 14
            end)
        end)

        Settings["Thrix"].AddFunction("sit", "Makes your player sit down.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.Sit = true
            end)
        end)

        Settings["Thrix"].AddFunction("unsit", "Makes your player stand up.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.Sit = false
            end)
        end)

        Settings["Thrix"].AddFunction({"platformstand", "stun"}, "Stuns your player.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.PlatformStand = true
            end)
        end)

        Settings["Thrix"].AddFunction({"unplatformstand", "unstun"}, "Unstuns your player.", function(Args)
            spawn(function()
                LocalPlayer.Character.Humanoid.PlatformStand = false
            end)
        end)

        Settings["Thrix"].AddFunction({"freeze", "fr"}, "Freezes your player in place.", function(Args)
            spawn(function()
                LocalPlayer.Character.HumanoidRootPart.Anchored = true
            end)
        end)

        Settings["Thrix"].AddFunction({"unfreeze", "unfr"}, "Unfreezes your player in place.", function(Args)
            spawn(function()
                LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end)
        end)

        Settings["Thrix"].AddFunction({"serverhop", "sh"}, "Teleports you to a different server.", function(Args)
            spawn(function()
                for i, v in pairs(game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                    if v.playing < v.maxPlayers then
                        print(string.format("Teleporting to https://roblox.com/discover#/rg-join/%s/%s/, Players: %s, MaxPlayers: %s, Ping: %s, Fps: %s", game.PlaceId, v.id, v.playing, v.maxPlayers, v.ping, v.fps))
                        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
                    end
                end

                print("No servers found.")
            end)
        end)

        Settings["Thrix"].AddFunction({"sync", "syncanim"}, "Synchronizes your current animation with another players.", function(Args)
            spawn(function()
                for _,v in next, GetPlayer(Args[2]).Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    for _,v2 in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                        v.TimePosition = v2.TimePosition
                    end
                end
            end)
        end)

        if Settings["Thrix"]["Settings"]["Waypoints"] == nil then
            spawn(function()
                Settings["Thrix"]["Settings"]["Waypoints"] = {}
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end
        
        Settings["Thrix"].AddFunction({"setwaypoint", "setwp"}, "Creates a waypoint at your current location.", function(Args)
            spawn(function()
                Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] = tostring(LocalPlayer.Character.HumanoidRootPart.CFrame)
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"deletewaypoint", "delwp"}, "Deletes the selected waypoint.", function(Args)
            spawn(function()
                if Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] then
                    Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] = nil
                else
                    warn("Invalid Waypoint.")
                end
                
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end)

        Settings["Thrix"].AddFunction({"waypoint", "wp"}, "Teleports you to the selected waypoint.", function(Args)
            spawn(function()
                if Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] then
                    loadstring("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] .. ")")()
                else
                    warn("Invalid Waypoint.")
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"firecd", "fireclickdetectors"}, "Fires all clickdetectors in the workspace.", function(Args)
            spawn(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("ClickDetector") then
            			fireclickdetector(v)
            		end
                end
    	    end)
        end)
        
        Settings["Thrix"].AddFunction({"firetouch", "firetouchinterests"}, "Fires all touchinterests in the workspace.", function(Args)
            spawn(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("TouchTransmitter") then
            			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
            		end
                end
        	end)
        end)
        
        Settings["Thrix"].AddFunction({"fireprox", "fireproximityprompts"}, "Fires all proximityprompts in the workspace.", function(Args)
            spawn(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("ProximityPrompt") then
            			fireproximityprompt(v)
            		end
                end
    	    end)
        end)
        
        Settings["Thrix"].AddFunction({"reset", "re"}, "Resets your player.", function(Args)
            spawn(function()
                local Position = LocalPlayer.Character.HumanoidRootPart.CFrame
                if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then 
                    LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15) 
                end
                LocalPlayer.Character:ClearAllChildren()
                
                LocalPlayer.Character = Instance.new("Model", workspace)
                LocalPlayer.Character:Destroy()
                LocalPlayer.CharacterAdded:Wait()
                LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                LocalPlayer.Character.HumanoidRootPart.CFrame = Position
            end)
        end)
        
        Settings["Thrix"].AddFunction({"rejoin", "rj"}, "Makes your player rejoin.", function(Args)
            spawn(function()
                queue_on_teleport("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer loadstring(game:HttpGet(\"https://raw.githubusercontent.com/0zBug/Thrixmin/main/main.lua\"))()")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end)
        end)
        
        Settings["Thrix"].AddFunction("posrj", "Makes your player rejoin and teleport to your current position.", function(Args)
            spawn(function()
                queue_on_teleport("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer repeat wait() until game:GetService('Players').LocalPlayer.Character repeat wait() until game:GetService('Players').LocalPlayer.Character.HumanoidRootPart wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) .. ") loadstring(game:HttpGet(\"https://raw.githubusercontent.com/0zBug/Thrixmin/main/main.lua\"))()")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end)
        end)
        
        Settings["Thrix"].AddFunction("report", "Reports the chosen player the chosen amount of times.", function(Args)
            spawn(function()
                local Player = GetPlayer(Args[2])
                local Amount = Args[3]
                
                local Sources = {
                    {"Swearing", game:HttpGet("https://pastebin.com/raw/RvHUZ1mB"):split("\n")},
                    {"Inappropriate Username", game:HttpGet("https://pastebin.com/raw/Yvig7WyT"):split("\n")},
                    {"Bullying", game:HttpGet("https://pastebin.com/raw/4FbW7D6A"):split("\n")},
                    {"Scamming", game:HttpGet("https://pastebin.com/raw/S9xvqgg0"):split("\n")},
                    {"Dating", game:HttpGet("https://pastebin.com/raw/eyXihwT6"):split("\n")},
                    {"Cheating/Exploiting", game:HttpGet("https://pastebin.com/raw/MrPGTkuU"):split("\n")},
                    {"Personal Question", game:HttpGet("https://pastebin.com/raw/Kht6Z4h1"):split("\n")},
                    {"Offsite Links", game:HttpGet("https://pastebin.com/raw/S9xvqgg0"):split("\n")},
                }
                
                for i = 1, Amount do
                    local Catagory = Sources[math.random(1, #Sources)]
                    local Reason = Catagory[2][math.random(1, #Catagory[2])]
                    game:GetService("Players"):ReportAbuse(Player, Catagory[1], Reason)
                    print(string.format("Reported %s for %s with message: %s", Player.Name, Catagory[1], Reason))
                    swait()
                end
            end)
        end)
			
	Settings["Thrix"].AddFunction({"load", "exec"}, "Runs the chosen file.", function(Args)
            spawn(function()
		loadstring(readfile(Args[2]))()
            end)
        end)
        
        Settings["Thrix"].AddFunction("prefix", "Sets your command prefix.", function(Args)
            spawn(function()
                Settings["Thrix"]["Settings"]["Prefix"] = Args[2]
                
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
                print(string.format("Set command prefix to \"%s\".", Args[2]))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"exit", "close"}, "Closes your game.", function(Args)
            spawn(function()
                game:Shutdown()
            end)
        end)

        local Chatted = LocalPlayer.Chatted:Connect(function(Message)
            local Args = string.split(Message, " ")
            table.foreach(Settings["Thrix"]["Functions"], function(Command, v)
                if string.lower(Args[1]) == string.lower(Settings["Thrix"]["Settings"]["Prefix"] .. Command) then
        			Settings["Thrix"]["Functions"][Command]:Execute(Args)
        		end
        	end)
        end)
        
        Settings["Thrix"].AddFunction({"end", "quit"}, "Stops the admin from running.", function(Args)
            spawn(function()
                Chatted:Disconnect()
                getgenv().Thrixmin = false
                print("Quit Thrixtle admin.")
            end)
        end)
        
        Settings["Thrix"].AddFunction({"install", "installplugin"}, "Installs the chosen plugin.", function(Args)
            spawn(function()
                local Success, Error = pcall(function() game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

                if not Success then
                    warn("Plugin not found.")
                    return
                else
                    local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                    
                    for i,v in next, Files do
                        writefile("Thrixmin/Plugins/" .. v, game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/" .. v:gsub(" ", "%%20")))
                        print(string.format("Installed %s from plugin: %s", v, Args[2]))
                        for _,Command in next, loadstring(readfile("Thrixmin/Plugins/" .. v))() do
                            if type(Command[1]) == "string" then
                                Command[1] = {Command[1]}
                            end
                            Settings["Thrix"].AddFunction(Command[1], Command[2], function(Args)
                                spawn(function()
                                    Command[3](Args)
                                end)
                            end, Args[2])
                        end
                    end
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"uninstall", "uninstallplugin"}, "Uninstalls the chosen plugin.", function(Args)
            spawn(function()
                local Success, Error = pcall(function() game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

                if not Success then
                    warn("Plugin not found.")
                    return
                else
                    local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                    
                    for i,v in next, Files do
                        delfile("Thrixmin/Plugins/" .. v)
                        print(string.format("Deleted %s from plugin: %s", v, Args[2]))
                    end
                end
            end)
        end)
        
        for _,File in next, listfiles("Thrixmin/Plugins") do
            if isfile(File) then
                for _,Command in next, loadstring(readfile(File))() do
                    if type(Command[1]) == "string" then
                        Command[1] = {Command[1]}
                    end
                    Settings["Thrix"].AddFunction(Command[1], Command[2], function(Args)
                        spawn(function()
                            Command[3](Args)
                        end)
                    end, string.split(string.split(File, "\\")[#string.split(File, "\\")], ".")[1])
                end
            end
        end
    end)
    
    if not Source then
        warn(Error)
    end
end

main()
