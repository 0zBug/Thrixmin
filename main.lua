
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

repeat wait() until game:IsLoaded()

--[[
    ██████╗  ██████╗  ██████╗██╗   ██╗███╗   ███╗███████╗███╗   ██╗████████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
    ██╔══██╗██╔═══██╗██╔════╝██║   ██║████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
    ██║  ██║██║   ██║██║     ██║   ██║██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████║   ██║   ██║██║   ██║██╔██╗ ██║
    ██║  ██║██║   ██║██║     ██║   ██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
    ██████╔╝╚██████╔╝╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                                               
    ⮚ Functions 
        • GetPlayer - Returns a player of a shortend string of the player's name.
        • AddSetting - Adds a setting to the admin.
        • GetSetting - Returns the value of a setting.
        • EditSetting - Edits a setting's value.
        • AddFunction - Adds a command to the admin.
        • SaveSettings - Saves Thrixmin's settings to the workspace.
        • ExecuteCommand - Executes a command.
        • CustomPlayerCase - Creates a custom player case.

    ⮚ Commands
        • goto from main - Teleports your player to the selected player. (Aliases: "tp", "to")
        • gameteleport from main - Teleports you to the selected game. (Aliases: "gametp")
        • walkspeed from main - Sets your character's walkspeed to the chosen amount. (Aliases: "ws")
        • jumppower from main - Sets your character's jumppower to the chosen amount. (Aliases: "jp")
        • hipheight from main - Sets your hip height to the chosen amount. (Aliases: "height")
        • gravity from main - Sets the workspace's gravity to the chosen amount. (Aliases: "grav")
        • timeofday from main - Sets the time to the selected time. (Aliases: "time")
        • sit from main - Makes your player sit down. 
        • unsit from main - Makes your player stand up. 
        • platformstand from main - Stuns your player. (Aliases: "stun")
        • unplatformstand from main - Unstuns your player. (Aliases: "unstun")
        • freeze from main - Freezes your player in place. (Aliases: "fr")
        • unfreeze from main - Unfreezes your player in place. (Aliases: "unfr")
        • offset from main - Offsets your player with a x, y and z value. 
        • infintejump from main - Allows you to jump while not on the ground. (Aliases: "infjump")
        • uninfintejump from main - Disables infinite jumping. (Aliases: "uninfjump")
        • headsit from main - Makes your player sit on the selected player's head. 
        • spin from main - Spins your character. 
        • unspin from main - Unspins your character. 
        • animspeed from main - Changes the speed of your players animation. 
        • noanim from main - Stops your players animation. 
        • reanim from main - Starts your players animation. 
        • stare from main - Stares at the selected player. (Aliases: "lookat")
        • unstare from main - Stops staring at the player. (Aliases: "unlookat")
        • orbit from main - Makes your character orbit the selected player. 
        • unorbit from main - Stop orbiting the selected player. 
        • noclip from main - Noclips your character. 
        • clip from main - Clips your character. 
        • serverhop from main - Teleports you to a different server. (Aliases: "sh")
        • sync from main - Synchronizes your current animation with another players. (Aliases: "syncanim")
        • ruinreplication from main - Breaks the selected players net. (Aliases: "breaknet")
        • view from main - Spectates the chosen player. (Aliases: "spectate")
        • unview from main - Makes your camera go back to your player. (Aliases: "unspectate")
        • invisible from main - Makes your character invisible. (Aliases: "invis")
        • visible from main - Makes your character visible. (Aliases: "vis")
        • fly from main - Makes your player fly. (Aliases: "retard")
        • vfly from main - Makes your player fly in vehicles. (Aliases: "vehiclefly")
        • unfly from main - Makes your player stop flying. (Aliases: "unvfly", "unvehiclefly")
        • fling from main - Flings the selected player. 
        • pathfind from main - Walks to the selected player using pathfinding. (Aliases: "walkto")
        • setwaypoint from main - Creates a waypoint at your current location. (Aliases: "setwp")
        • deletewaypoint from main - Deletes the selected waypoint. (Aliases: "delwp")
        • waypoint from main - Teleports you to the selected waypoint. (Aliases: "wp")
        • pathfindwaypoint from main - Makes you walt to the selected waypoint. (Aliases: "pfwp")
        • chams from main - Highlights Players through walls. (Aliases: "esp")
        • teamchams from main - Highlights Players through walls by team. (Aliases: "teamesp")
        • nochams from main - Disables chams. (Aliases: "noesp")
        • firecd from main - Fires all clickdetectors in the workspace. (Aliases: "fireclickdetectors")
        • firetouch from main - Fires all touchinterests in the workspace. (Aliases: "firetouchinterests")
        • fireprox from main - Fires all proximityprompts in the workspace. (Aliases: "fireproximityprompts")
        • team from main - If possible, switch to the selected team. 
        • spider from main - Lets you climb on walls. (Aliases: "wallclimb")
        • unspider from main - Stops climbing on walls. (Aliases: "unwallclimb")
        • swim from main - Lets you swim in the air. 
        • unswim from main - Stops swimming in the air. 
        • noname from main - Disables nametags in some games. (Aliases: "nobillboardgui")
        • reset from main - Resets your player. (Aliases: "re")
        • spawn from main - Respawns your player. (Aliases: "gr")
        • rejoin from main - Makes your player rejoin. (Aliases: "rj")
        • posrj from main - Makes your player rejoin and teleport to your current position. 
        • report from main - Reports the chosen player the chosen amount of times. 
        • load from main - Runs the chosen file. (Aliases: "exec")
        • delete from main - Deletes the chosen file. (Aliases: "del", "delfile")
        • join from main - Teleports you to the game of the join code. 
        • gencode from main - Generates a join code. 
        • chatlogs from main - Opens chat logs. (Aliases: "clogs")
        • remotespy from main - Opens remote spy (Aliases: "rspy")
        • dex from main - Opens dex. (Aliases: "explorer")
        • exit from main - Closes your game. (Aliases: "close")
        • install from main - Installs the chosen plugin. (Aliases: "installplugin")
        • uninstall from main - Uninstalls the chosen plugin. (Aliases: "uninstallplugin")
        • addkeybind from main - Adds a keybind to the chosen command. 
        • removekeybind from main - Removes a keybind from the chosen command. 
        • addalias from main - Adds an alias to the chosen command. 
        • removealias from main - Removes the chosen alias. 
        • prefix from main - Sets your command prefix. 
        • end from main - Stops the admin from running. (Aliases: "quit")
        • discord from main - Invites you to the Thrixmin discord. 
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
        ["Version"] = "v1.5.0",
        ["Developer"] = "Bug#4193",
    },
    ["Debug"] = true,
    ["Thrix"] = {
        ["Settings"] = {
            ["Prefix"] = "-",
            ["Silent"] = true,
            ["AutoCorrect"] = false,
            ["AntiChatLog"] = true,
            ["Aliases"] = {},
            ["Keybinds"] = {},
            ["Markers"] = true
        },
        ["OutputTypes"] = {
              Output = {},
              SyntaxErrors = {}
        },
        ["Functions"] = {}
    }
}

--[[
    ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗███████╗
    ████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝██╔════╝
    ██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  ███████╗
    ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  ╚════██║
    ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗███████║
    ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝                                                            
]]--

local Git = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/CodeTransfer/Git.lua"))()
local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/Highlight.lua"))()
local Core = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/CoreUI.lua"))()

--[[
    ███████╗███████╗██████╗ ██╗   ██╗██╗ ██████╗███████╗███████╗
    ██╔════╝██╔════╝██╔══██╗██║   ██║██║██╔════╝██╔════╝██╔════╝
    ███████╗█████╗  ██████╔╝██║   ██║██║██║     █████╗  ███████╗
    ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██║██║     ██╔══╝  ╚════██║
    ███████║███████╗██║  ██║ ╚████╔╝ ██║╚██████╗███████╗███████║
    ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝ ╚═════╝╚══════╝╚══════╝                                                       
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
local UserInputService = game:GetService("UserInputService")
local AppStorageService = game:GetService("AppStorageService")
local CollectionService = game:GetService("CollectionService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local MemStorageService = game:GetService("MemStorageService")
local MessageBusService = game:GetService("MessageBusService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TouchInputService = game:GetService("TouchInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local PathfindingService = game:GetService("PathfindingService")
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

--[[
    ███████╗███████╗████████╗██╗   ██╗██████╗ 
    ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
    ███████╗█████╗     ██║   ██║   ██║██████╔╝
    ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
    ███████║███████╗   ██║   ╚██████╔╝██║     
    ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝                                        
]]--

if isfile("Thrixmin/Settings.json") then
    Settings["Thrix"]["Settings"] = HttpService:JSONDecode(readfile("Thrixmin/Settings.json"))
else
    if not isfolder("Thrixmin") then
        makefolder("Thrixmin")
    end
end

if not isfile("Thrixmin/UISettings.json") then
    writefile("Thrixmin/UISettings.json", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/UISettings.json"))
end

Settings["Thrix"]["UI"] = HttpService:JSONDecode(readfile("Thrixmin/UISettings.json"))

if not isfolder("Thrixmin/Plugins") then
    makefolder("Thrixmin/Plugins")
end
 
if not isfolder("Thrixmin/Assets") then
    makefolder("Thrixmin/Assets")
end

if not isfolder("Thrixmin/Assets") then
    makefolder("Thrixmin/Assets")
end

if not isfile("Thrixmin/Assets/Logo.png") then
    writefile("Thrixmin/Assets/Logo.png", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Images/Logo.png"))
end

if not isfile("Thrixmin/Assets/Logo-White.png") then
    writefile("Thrixmin/Assets/Logo-White.png", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Images/Logo-White.png"))
end

if not isfile("Thrixmin/Assets/Player.png") then
    writefile("Thrixmin/Assets/Player.png", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Images/Player.png"))
end

--[[
    ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
    ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
    ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
    ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
     ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
      ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝
]]--

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local oprint = print
local owarn = warn

local queue_on_teleport = queue_on_teleport or syn.queue_on_teleport
local getcustomasset = getcustomasset or getsynasset
local request = request or syn.request

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.ResetOnSpawn = false

local WaypointFolder = Instance.new("Folder", ScreenGui)

local Frame = Instance.new("Frame", ScreenGui)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 1.3, 0)
Frame.Size = UDim2.new(0.6, 0, 0.07, 0)

local UIGradient = Instance.new("UIGradient", Frame)
UIGradient.Rotation = -90

local Gradient = {}
for i = 1, #Settings["Thrix"]["UI"]["BackgroundGradient"] do
	local Keypoint = Settings["Thrix"]["UI"]["BackgroundGradient"][i]
	local Index, Color = Keypoint[1], Keypoint[2]
	table.insert(Gradient, ColorSequenceKeypoint.new(Index, Color3.fromRGB(Color[1], Color[2], Color[3])))
end

UIGradient.Color = ColorSequence.new(Gradient)

local UICorner = Instance.new("UICorner", Frame)

local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(39, 39, 39)
UIStroke.Transparency = Settings["Thrix"]["UI"]["UIStroke"]["Transparency"]
UIStroke.Thickness = Settings["Thrix"]["UI"]["UIStroke"]["Thickness"]

local ImageLabel = Instance.new("ImageLabel", Frame)
ImageLabel.BackgroundTransparency = 1
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.05, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0.09, 0, 1, 0)

if Settings["Thrix"]["UI"]["CustomIcon"]["Enabled"] then
	local FileName = string.format("Thrixmin/Assets/%s.png", HttpService:GenerateGUID(false))
	writefile(FileName, game:HttpGet(Settings["Thrix"]["UI"]["CustomIcon"]["Url"]))
	ImageLabel.Image = getcustomasset(FileName)

	spawn(function()
		wait(5)
		delfile(FileName)
	end)
else
	ImageLabel.Image = getcustomasset("Thrixmin/Assets/Logo.png")
end

local TextColor = Settings["Thrix"]["UI"]["Text"]["Color"]
local TextBox = Instance.new("TextBox", Frame)
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.BackgroundTransparency = 1
TextBox.Font = Enum.Font[Settings["Thrix"]["UI"]["Text"]["Font"]]
TextBox.TextSize = tostring(Settings["Thrix"]["UI"]["Text"]["TextSize"])
TextBox.TextColor3 = Color3.fromRGB(TextColor["Normal"][1], TextColor["Normal"][2], TextColor["Normal"][3])
TextBox.Text = ""
TextBox.PlaceholderText = "Enter Command"
TextBox.ZIndex = 3

local AutoComplete = Instance.new("TextLabel", Frame)
AutoComplete.AnchorPoint = Vector2.new(0.5, 0.5)
AutoComplete.Position = UDim2.new(0.5, 0, 0.5, 0)
AutoComplete.Size = UDim2.new(1, 0, 1, 0)
AutoComplete.BackgroundTransparency = 1
AutoComplete.Font = Enum.Font[Settings["Thrix"]["UI"]["Text"]["Font"]]
AutoComplete.TextSize = tostring(Settings["Thrix"]["UI"]["Text"]["TextSize"])
AutoComplete.TextColor3 = Color3.fromRGB(TextColor["AutoComplete"][1], TextColor["AutoComplete"][2], TextColor["AutoComplete"][3])
AutoComplete.Text = ""

--[[
    ███████╗██╗   ██╗███████╗███╗   ██╗████████╗███████╗
    ██╔════╝██║   ██║██╔════╝████╗  ██║╚══██╔══╝██╔════╝
    █████╗  ██║   ██║█████╗  ██╔██╗ ██║   ██║   ███████╗
    ██╔══╝  ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║   ██║   ╚════██║
    ███████╗ ╚████╔╝ ███████╗██║ ╚████║   ██║   ███████║
    ╚══════╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝
]]--

local Heartbeat = RunService.Heartbeat
local RenderStepped = RunService.RenderStepped
local Stepped = RunService.Stepped

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

local PlayerCases = {
    ["random"] = function()
        return {Players:GetPlayers()[math.random(1, #Players:GetPlayers())]}
    end,
    ["closest"] = function()
        local Closest
        local Distance = math.huge
        local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
        
        for _, Player in ipairs(game.Players:GetPlayers()) do
        	if Player ~= LocalPlayer then
        		if Player:DistanceFromCharacter(HumanoidRootPart.Position) < Distance then
        			Closest = Player
        			Distance = Player:DistanceFromCharacter(HumanoidRootPart.Position)
        		end
        	end
        end
        
        return {Closest}
    end,
    ["farthest"] = function()
        local Farthest
        local Distance = 0
        local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
        
        for _, Player in ipairs(game.Players:GetPlayers()) do
        	if Player ~= LocalPlayer then
        		if Player:DistanceFromCharacter(HumanoidRootPart.Position) > Distance then
        			Farthest = Player
        			Distance = Player:DistanceFromCharacter(HumanoidRootPart.Position)
        		end
        	end
        end
        
        return {Farthest}
    end,
    ["me"] = function()
        return LocalPlayer
    end,
    ["all"] = function()
        return Players:GetPlayers()
    end,
    ["others"] = function()
        local Others = {}

        for _, Player in pairs(Players:GetPlayers()) do
        	if Player ~= LocalPlayer then
        		table.insert(Others, Player)
        	end
        end
        
        return Others
    end
}

local function CustomPlayerCase(Name, Function)
    PlayerCases[Name] = Function
end

local function GetPlayer(Name)
    if PlayerCases[string.lower(Name)] then
        return PlayerCases[string.lower(Name)]()
    else
        for i,v in next, Players:GetChildren() do
            if v:IsA("Player") and string.lower(string.sub((v.Name), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) or string.lower(string.sub((v.DisplayName), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) then
                return {v}
            end
        end
    end
    
    return false
end

local States = {
    "GettingUp", "Ragdoll", "Swimming",
    "FallingDown", "Running", "Jumping",
    "PlatformStanding", "Seated", "Physics",
    "RunningNoPhysics", "Landed", "Freefall",
    "StrafingNoPhysics", "Flying", "Climbing"
}

local SetStatesEnabled = function(Enabled)
    for _, v in pairs(States) do
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType[v], Enabled)
    end
end

local function GetCodes()
    return HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Thrixmin/JoinCodes/main/Codes.json"))
end

local function FlushCodes(Codes)
    for i,v in next, Codes do 
        if os.time() - v.Time > 10800 then
            Codes[i] = nil
        end
    end

    return Codes
end

local function GenerateCode()
    return string.format("%04d", math.random(1, 9999)), {
        PlaceID = game.PlaceId,
        JobId = game.JobId,
        Time = os.time()
    }
end

function UpdateCodes()
    local Codes = FlushCodes(GetCodes())
    local Code, CodeData = GenerateCode()
    Codes[Code] = CodeData

    Git.Push("Thrixmin/JoinCodes", "Codes.json", HttpService:JSONEncode(Codes))

    return Code
end

function TeleportToCode(Code)
    local Codes = FlushCodes(GetCodes())

    TeleportService:TeleportToPlaceInstance(Codes[Code].PlaceID, Codes[Code].JobId)
end

local function thread(f)
    return spawn(function() 
        if syn then
            syn.set_thread_identity(7)
        elseif KRNL_LOADED then
            setthreadcontext(7)
        elseif getexecutorname and getexecutorname() == "ScriptWare" then
            setthreadidentity(7)
        end

        f()
    end)
end

local function FindClosestCommand(Command)
    local Distance = math.huge
    local Closest

    if Settings["Thrix"]["Functions"][Command] or not Settings["Thrix"]["Settings"]["AutoCorrect"] then
        return Settings["Thrix"]["Functions"][Command]
    end

    for Compare, Table in pairs(Settings["Thrix"]["Functions"]) do
        local Leven = {
            [0] = {
                [0] = 0
            }
        }

        for i = 1, #Command do
            Leven[i] = {}
            Leven[i][0] = i
            for j = 1, #Compare do
                Leven[0][j] = j
                Leven[i][j] = math.min(Leven[i - 1][j] + 1, Leven[i][j - 1] + 1, Leven[i - 1][j - 1] + (string.byte(Command, i) == string.byte(Compare, j) and 0 or 1))
            end
        end    
        
        if (Leven[#Command][#Compare] < Distance) then
            Distance = Leven[#Command][#Compare]
            Closest = Table
        end 
    end

    return Closest
end

local function ExecuteCommand(Command, ...)
    Settings["Thrix"]["Functions"][Command]:Execute(...)
end

local function AddFunction(Aliases, Description, Execute, Plugin)
    local Output = {
        Output = {},
        SyntaxErrors = {},
        FunctionErrors = {}
    }

    if type(Aliases) == "string" then
        Aliases = {Aliases}
    end
    
    if #Output.SyntaxErrors == 0 then
        for _, Alias in next, Aliases do
            if Settings["Thrix"]["Settings"]["Aliases"][Alias] then
                for _, Alias in next, Settings["Thrix"]["Settings"]["Aliases"][Alias] do
                    table.insert(Aliases, Alias)
                end
            end
        end
                
        for _, Command in next, Aliases do
            Settings["Thrix"]["Functions"][Command] = {}

            Settings["Thrix"]["Functions"][Command]["Execute"] = function(self, args)
                local args = args or {}

                thread(function()
                    self.Arguments = {args}

                    local Success, Error = pcall(Execute, unpack(args))

                    if not Success then 
                        warn(Error)
                    end
                end)
            end
        end
        
        local Plugin = Plugin or "main"
        local CommandDocs = string.format("Imported %s from %s - %s ", Aliases[1], Plugin, Description)
        
        if #Aliases > 1 then
            table.remove(Aliases, 1)
            CommandDocs = CommandDocs .. "(Aliases: \"" .. table.concat(Aliases, "\", \"") .. "\")"
        end

        print(CommandDocs)

        return Output
    else
        return FunctionOutput
    end
end

local function SaveSettings()
    writefile("Thrixmin/Settings.json", HttpService:JSONEncode(Settings["Thrix"]["Settings"]))
end

local function AddSetting(Name, Value)
    if not Settings["Thrix"]["Settings"][Name] then
        Settings["Thrix"]["Settings"][Name] = Value or false
    end
    
    SaveSettings()
end

local function GetSetting(Name)
    return Settings["Thrix"]["Settings"][Name]
end

local function EditSetting(Name, Value)
    Settings["Thrix"]["Settings"][Name] = Value
    
    SaveSettings()
end

getgenv().GetPlayer = GetPlayer
getgenv().AddSetting = AddSetting
getgenv().GetSetting = GetSetting
getgenv().EditSetting = EditSetting
getgenv().AddFunction = AddFunction
getgenv().SaveSettings = SaveSettings
getgenv().ExecuteCommand = ExecuteCommand
getgenv().CustomPlayerCase = CustomPlayerCase

--[[
    ███╗   ███╗ █████╗ ██╗███╗   ██╗
    ████╗ ████║██╔══██╗██║████╗  ██║
    ██╔████╔██║███████║██║██╔██╗ ██║
    ██║╚██╔╝██║██╔══██║██║██║╚██╗██║
    ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝
]]--

local function main()
    print(Settings["Info"]["Name"], Settings["Info"]["Version"], "Loaded")
    print(string.format("Prefix - \"%s\"", Settings["Thrix"]["Settings"]["Prefix"]))
    
    local Source, Error = pcall(function()
        SaveSettings()
        
        AddFunction({"goto", "tp"}, "Teleports your player to the selected player.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                if Player.Character then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
                end
            end
        end)
        
        AddFunction({"gameteleport", "gametp"}, "Teleports you to the selected game.", function(Place)
            TeleportService:Teleport(Place, LocalPlayer)
        end)
        
        AddFunction({"walkspeed", "ws"}, "Sets your character's walkspeed to the chosen amount.", function(WalkSpeed)
            LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed or 16
        end)
        
        AddFunction({"jumppower", "jp"}, "Sets your character's jumppower to the chosen amount.", function(JumpPower)
            LocalPlayer.Character.Humanoid.JumpPower = JumpPower or 50
        end)

        AddFunction({"hipheight", "height"}, "Sets your hip height to the chosen amount.", function(HipHeight)
            LocalPlayer.Character.Humanoid.HipHeight = HipHeight or 2
        end)
        
        AddFunction({"gravity", "grav"}, "Sets the workspace's gravity to the chosen amount.", function(Gravity)
            game.Workspace.Gravity = Gravity or 196.2
        end)

        AddFunction({"timeofday", "time"}, "Sets the time to the selected time.", function(Time)
            game.Lighting.ClockTime = Time or 14
        end)

        AddFunction("sit", "Makes your player sit down.", function()
            LocalPlayer.Character.Humanoid.Sit = true
        end)

        AddFunction("unsit", "Makes your player stand up.", function()
            LocalPlayer.Character.Humanoid.Sit = false
        end)

        AddFunction({"platformstand", "stun"}, "Stuns your player.", function()
            LocalPlayer.Character.Humanoid.PlatformStand = true
        end)

        AddFunction({"unplatformstand", "unstun"}, "Unstuns your player.", function()
            LocalPlayer.Character.Humanoid.PlatformStand = false
        end)

        AddFunction({"freeze", "fr"}, "Freezes your player in place.", function()
            LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end)

        AddFunction({"unfreeze", "unfr"}, "Unfreezes your player in place.", function()
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end)

        AddFunction("offset", "Offsets your player with a x, y and z value.", function(x, y, z)
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(tonumber(x) or 0, tonumber(y) or 0, tonumber(z) or 0)
        end)

        local InfiniteJump = false
        LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
            if InfiniteJump and Key == " " then
                LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(3)
            end
        end)

        AddFunction({"infintejump", "infjump"}, "Allows you to jump while not on the ground.", function()
            InfiniteJump = true
        end)

        AddFunction({"uninfintejump", "uninfjump"}, "Disables infinite jumping.", function()
            InfiniteJump = false
        end)
        
        local HeadSit
        AddFunction("headsit", "Makes your player sit on the selected player's head.", function(Player)
            local Player = GetPlayer(Player)
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

            for _, Player in pairs(Player) do
                if Player.Character then
                    if HeadSit then
                        HeadSit:Disconnect()
                    end
                    
                    local Head = Player.Character:FindFirstChild("Head")

                    if Player and Humanoid then
                        Humanoid.Sit = true
                        
                        HeadSit = RunService.Heartbeat:Connect(function()
                            if Player and Humanoid.Sit and Player.Character then
                                HumanoidRootPart.CFrame = Head.CFrame * CFrame.new(0, Head.Size.Y / 2, Head.Size.Z / 2)
                            else
                                HeadSit:Disconnect()
                            end
                        end)
                    end
                end
            end
        end)

        AddFunction("spin", "Spins your character.", function(Speed)
            if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spin") then
                LocalPlayer.Character.HumanoidRootPart.Spin:Destroy()
            end

            local Spin = Instance.new("BodyAngularVelocity", LocalPlayer.Character.HumanoidRootPart)
            Spin.Name = "Spin"
            Spin.MaxTorque = Vector3.new(0, math.huge, 0)
            Spin.AngularVelocity = Vector3.new(0, tonumber(Speed) or 5, 0)
        end)

        AddFunction("unspin", "Unspins your character.", function()
            if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spin") then
                LocalPlayer.Character.HumanoidRootPart.Spin:Destroy()
            end
        end)

        AddFunction("animspeed", "Changes the speed of your players animation.", function(Speed)
            for i,v in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                v:AdjustSpeed(tonumber(Speed) or 1)
            end
        end)

        AddFunction("noanim", "Stops your players animation.", function()
            LocalPlayer.Character.Animate.Disabled = true
        end)

        AddFunction("reanim", "Starts your players animation.", function()
            LocalPlayer.Character.Animate.Disabled = false
        end)

        local LookAt
        AddFunction({"stare", "lookat"}, "Stares at the selected player.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                if Player.Character then
                    if LookAt then
                        LookAt:Disconnect()
                    end

                    LookAt = RunService.RenderStepped:Connect(function()
                        local Character = LocalPlayer.Character

                        if Player.Character and Character then
                            local PrimaryPart = Character.PrimaryPart
                            local HumanoidRootPart = Player.Character:FindFirstChild("HumanoidRootPart")

                            if PrimaryPart and HumanoidRootPart then
                                Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(PrimaryPart.Position, Vector3.new(HumanoidRootPart.Position.X, PrimaryPart.Position.Y, HumanoidRootPart.Position.Z)))
                            elseif not Player then
                                LookAt:Disconnect()
                            end
                        end
                    end)
                end
            end
        end)

        AddFunction({"unstare", "unlookat"}, "Stops staring at the player.", function()
            if LookAt then
                LookAt:Disconnect()
            end
        end)

        local Orbit
        AddFunction("orbit", "Makes your character orbit the selected player.", function(Player, Speed)
            local Player = GetPlayer(Player)
            local Speed = tonumber(Speed) or 1

            for _, Player in pairs(Player) do
                if Player.Character then
                    if Orbit then
                        Orbit:Disconnect()
                    end

                    Orbit = RunService.Stepped:Connect(function()
                        local Character = LocalPlayer.Character

                        if Player.Character and Character then
                            local PrimaryPart = Character.PrimaryPart
                            local HumanoidRootPart = Player.Character:FindFirstChild("HumanoidRootPart")

                            if PrimaryPart and HumanoidRootPart then
                                Character.HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position + Vector3.new(math.sin(os.clock() * Speed) * 10, 0, math.cos(os.clock() * Speed) * 10), Vector3.new(HumanoidRootPart.Position.X, PrimaryPart.Position.Y, HumanoidRootPart.Position.Z))
                            elseif not Player then
                                Orbit:Disconnect()
                            end
                        end
                    end)
                end
            end
        end)

        AddFunction("unorbit", "Stop orbiting the selected player.", function()
            if Orbit then
                Orbit:Disconnect()
            end
        end)

        local Noclip
        local Clip = true
        AddFunction("noclip", "Noclips your character.", function()
            Clip = false
            Noclip = Stepped:Connect(function()
                if Clip == false and LocalPlayer.Character then
                    for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == true then
                        	v.CanCollide = false
                        end
                    end
                end
            end)
        end)

        AddFunction("clip", "Clips your character.", function()
            if Noclip then
                Noclip:Disconnect()
            end

            Clip = true
        end)
        
        AddFunction({"serverhop", "sh"}, "Teleports you to a different server.", function()
            for i, v in pairs(HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                if v.playing < v.maxPlayers then
                    print(string.format("Teleporting to https://roblox.com/discover#/rg-join/%s/%s/, Players: %s, MaxPlayers: %s, Ping: %s, Fps: %s", game.PlaceId, v.id, v.playing, v.maxPlayers, v.ping, v.fps))
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id)
                end
            end

            print("No servers found.")
        end)

        AddFunction({"sync", "syncanim"}, "Synchronizes your current animation with another players.", function(Player)
            for _,v in next, GetPlayer(Player).Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                for _,v2 in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    v2.TimePosition = v.TimePosition
                end
            end
        end)

        AddFunction({"ruinreplication", "breaknet"}, "Breaks the selected players net.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                for _, v in next, Player.Character:GetDescendants() do
                    if v:IsA("Part") or v:IsA("BasePart") then
                        Heartbeat:Connect(function()
                            sethiddenproperty(v, "NetworkIsSleeping", true)
                        end)
                    end
                end
            end
        end)

        AddFunction({"view", "spectate"}, "Spectates the chosen player.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                if Player.Character then
                    Workspace.Camera.CameraSubject = Player.Character.Humanoid
                end
            end
        end)
        
        AddFunction({"unview", "unspectate"}, "Makes your camera go back to your player.", function()
            Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
        end)

        
        local Invisible
        AddFunction({"invisible", "invis"}, "Makes your character invisible.", function()
            local CurrentCamera = Workspace.CurrentCamera
            
            local Character = LocalPlayer.Character
            Character.Archivable = true

            Invisible = Character:Clone()
            Invisible.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

            local ObjectValue = Instance.new("ObjectValue", Invisible)
            ObjectValue.Name = "Character"
            ObjectValue.Value = Character

            for _, Part in pairs(Invisible:GetDescendants()) do
                if Part:IsA("BasePart") then
                    Part.Material = Enum.Material.ForceField
                end
            end

            local Camera = CurrentCamera.CFrame
            local Origin = Character.HumanoidRootPart.CFrame

            Character:MoveTo(Vector3.new(0, 9e9, 0))
            
            CurrentCamera.CameraType = Enum.CameraType.Scriptable

            wait(0.1)

            CurrentCamera.CameraType = Enum.CameraType.Custom

            Character.Parent = nil
            Invisible.Parent = Workspace

            Invisible.HumanoidRootPart.CFrame = Origin

            LocalPlayer.Character = Invisible

            CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            CurrentCamera.CFrame = Camera

            LocalPlayer.Character.Animate.Disabled = true
            LocalPlayer.Character.Animate.Disabled = false
        end)

        AddFunction({"visible", "vis"}, "Makes your character visible.", function()
            local CurrentCamera = Workspace.CurrentCamera
            local Camera = CurrentCamera.CFrame
            local Character = Invisible.Character.Value

            Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
            LocalPlayer.Character = Invisible.Character.Value

            Invisible:Destroy()

            Character.Parent = Workspace

            CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            CurrentCamera.CFrame = Camera
        end)
        
        local Flying = false
        AddFunction("fly", "Makes your player fly.", function(Speed)
            if Flying then Flying = false end
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false

            local Speed = tonumber(Speed) or 1
            
            if KeyDown or KeyUp then 
                KeyDown:Disconnect() 
                KeyUp:Disconnect() 
            end

            wait()

            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
        
            local Controls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local lControls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local sSpeed = 0
            
            KeyDown = LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
                if Key:lower() == "w" then
                    Controls.F = Speed
                elseif Key:lower() == "s" then
                    Controls.B = -Speed
                elseif Key:lower() == "a" then
                    Controls.L = -Speed
                elseif Key:lower() == "d" then
                    Controls.R = Speed
                elseif Key:lower() == "e" then
                    Controls.Q = Speed * 2
                elseif Key:lower() == "q" then
                    Controls.E = -Speed * 2
                end
                pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
            end)
            
            KeyUp = LocalPlayer:GetMouse().KeyUp:Connect(function(Key)
                if Key:lower() == "w" then
                    Controls.F = 0
                elseif Key:lower() == "s" then
                    Controls.B = 0
                elseif Key:lower() == "a" then
                    Controls.L = 0
                elseif Key:lower() == "d" then
                    Controls.R = 0
                elseif Key:lower() == "e" then
                    Controls.Q = 0
                elseif Key:lower() == "q" then
                    Controls.E = 0
                end
            end)
            
            Flying = true
            
            local BodyGyro = Instance.new("BodyGyro")
            local BodyVelocity = Instance.new("BodyVelocity")
            BodyGyro.P = 9e4
            BodyGyro.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            BodyVelocity.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            BodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BodyGyro.CFrame = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
            BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            
            while Flying and wait() do
                if Controls.L + Controls.R ~= 0 or Controls.F + Controls.B ~= 0 or Controls.Q + Controls.E ~= 0 then
                    sSpeed = 50
                elseif not (Controls.L + Controls.R ~= 0 or Controls.F + Controls.B ~= 0 or Controls.Q + Controls.E ~= 0) and Speed ~= 0 then
                    sSpeed = 0
                end
                if (Controls.L + Controls.R) ~= 0 or (Controls.F + Controls.B) ~= 0 or (Controls.Q + Controls.E) ~= 0 then
                    BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Controls.F + Controls.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(Controls.L + Controls.R, (Controls.F + Controls.B + Controls.Q + Controls.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * sSpeed
                    lControls = {F = Controls.F, B = Controls.B, L = Controls.L, R = Controls.R}
                elseif (Controls.L + Controls.R) == 0 and (Controls.F + Controls.B) == 0 and (Controls.Q + Controls.E) == 0 and Speed ~= 0 then
                    BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lControls.F + lControls.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lControls.L + lControls.R, (lControls.F + lControls.B + Controls.Q + Controls.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * sSpeed
                else
                    BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
                BodyGyro.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
            
            Controls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lControls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            sSpeed = 0
            
            BodyGyro:Destroy()
            BodyVelocity:Destroy()
        end)

        AddFunction({"vfly", "vehiclefly"}, "Makes your player fly in vehicles.", function(Speed)
            if Flying then Flying = false end
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false

            local Speed = tonumber(Speed) or 1
            
            if KeyDown or KeyUp then 
                KeyDown:Disconnect() 
                KeyUp:Disconnect() 
            end

            wait()
        
            local Controls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local lControls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local sSpeed = 0
            
            KeyDown = LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
                if Key:lower() == "w" then
                    Controls.F = Speed
                elseif Key:lower() == "s" then
                    Controls.B = -Speed
                elseif Key:lower() == "a" then
                    Controls.L = -Speed
                elseif Key:lower() == "d" then
                    Controls.R = Speed
                elseif Key:lower() == "e" then
                    Controls.Q = Speed * 2
                elseif Key:lower() == "q" then
                    Controls.E = -Speed * 2
                end
                pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
            end)
            
            KeyUp = LocalPlayer:GetMouse().KeyUp:Connect(function(Key)
                if Key:lower() == "w" then
                    Controls.F = 0
                elseif Key:lower() == "s" then
                    Controls.B = 0
                elseif Key:lower() == "a" then
                    Controls.L = 0
                elseif Key:lower() == "d" then
                    Controls.R = 0
                elseif Key:lower() == "e" then
                    Controls.Q = 0
                elseif Key:lower() == "q" then
                    Controls.E = 0
                end
            end)
            
            Flying = true
            
            local BodyGyro = Instance.new("BodyGyro")
            local BodyVelocity = Instance.new("BodyVelocity")
            BodyGyro.P = 9e4
            BodyGyro.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            BodyVelocity.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            BodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BodyGyro.CFrame = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
            BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            
            while Flying and wait() do
                if Controls.L + Controls.R ~= 0 or Controls.F + Controls.B ~= 0 or Controls.Q + Controls.E ~= 0 then
                    sSpeed = 50
                elseif not (Controls.L + Controls.R ~= 0 or Controls.F + Controls.B ~= 0 or Controls.Q + Controls.E ~= 0) and Speed ~= 0 then
                    sSpeed = 0
                end
                if (Controls.L + Controls.R) ~= 0 or (Controls.F + Controls.B) ~= 0 or (Controls.Q + Controls.E) ~= 0 then
                    BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Controls.F + Controls.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(Controls.L + Controls.R, (Controls.F + Controls.B + Controls.Q + Controls.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * sSpeed
                    lControls = {F = Controls.F, B = Controls.B, L = Controls.L, R = Controls.R}
                elseif (Controls.L + Controls.R) == 0 and (Controls.F + Controls.B) == 0 and (Controls.Q + Controls.E) == 0 and Speed ~= 0 then
                    BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lControls.F + lControls.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lControls.L + lControls.R, (lControls.F + lControls.B + Controls.Q + Controls.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * sSpeed
                else
                    BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
                BodyGyro.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
            
            Controls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lControls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            sSpeed = 0
            
            BodyGyro:Destroy()
            BodyVelocity:Destroy()
        end)
        
        AddFunction({"unfly", "unvfly", "unvehiclefly"}, "Makes your player stop flying.", function()
            Flying = false
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
        
            if KeyDown or KeyUp then 
                KeyDown:Disconnect() 
                KeyUp:Disconnect() 
            end
            
            pcall(function() 
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom 
            end)
        end)

        AddFunction("fling", "Flings the selected player.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                if Player == LocalPlayer then continue end
            
                if Player then
                    local Character = LocalPlayer.Character
                    
                    if Character then
                        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                        local Humanoid = Character:FindFirstChild("Humanoid")
            
                        local Torso = Player.Character:FindFirstChild("Torso") or Player.Character:FindFirstChild("UpperTorso")
            
                        if HumanoidRootPart and Humanoid and Torso then
                            for _, v in next, LocalPlayer.Character:GetDescendants() do
                                if v:IsA("BasePart") then
                                    v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                                end
                            end
            
                            local Origin = HumanoidRootPart.CFrame
                            local Offset = CFrame.new((Torso.Velocity.X / 6), -(Torso.Size.Y * 0.75) + (Torso.Velocity.Y / 6), (Torso.Velocity.Z / 6)) * CFrame.Angles(math.pi, math.pi, 0) * CFrame.new(-(Torso.Size.X / 3), 0, -(Torso.Size.Z / 3))
            
                            local Heartbeat = RunService.Heartbeat:Connect(function()
                                Humanoid:ChangeState(16)
                                
                                for _, v in next, LocalPlayer.Character:GetDescendants() do
                                    if v:IsA("BasePart") then
                                        v.CanCollide = false
                                        v.RotVelocity = Vector3.new(11e11, 11e11, 11e11)
                                        v.Velocity = Vector3.new(11e11, 11e11, 11e11)
                                    end
                                end
            
                                HumanoidRootPart.CFrame = Torso.CFrame * Offset
                            end)
            
                            local t = os.clock()
            
                            while HumanoidRootPart and Torso and Torso.Parent and Torso.Velocity.Magnitude < 500 and (os.clock() - t) < (Torso.Velocity.Magnitude * 0.02) + 0.4 do
                                RunService.Heartbeat:Wait()
                            end
            
                            HumanoidRootPart.Anchored = true
            
                            Heartbeat:Disconnect()
            
                            for i = 1, 5 do
                                RunService.Heartbeat:Wait()
                                
                                for _, v in next, LocalPlayer.Character:GetDescendants() do
                                    if v:IsA("BasePart") then
                                        v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                                    end
                                end
                                
                                HumanoidRootPart.CFrame = Origin
                                Humanoid:ChangeState(8)
                            end
            
                            HumanoidRootPart.Anchored = false
            
                            for _, v in next, LocalPlayer.Character:GetDescendants() do
                                if v:IsA("BasePart") then
                                    v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                                end
                            end
                        end
                    end
                end
            end
        end)
        
        AddFunction({"pathfind", "walkto"}, "Walks to the selected player using pathfinding.", function(Player)
            local Player = GetPlayer(Player)

            for _, Player in pairs(Player) do
                if Player.Character then
                    local To = Player.Character.HumanoidRootPart.Position
                    local From =  LocalPlayer.Character.HumanoidRootPart.Position
                    
                    local Path = PathfindingService:FindPathAsync(From, To)
                    local Points = Path:GetWaypoints()
                    local Parts = {}
                    
                    for i,v in next, Points do
                        local Part = Instance.new("Part", game.Workspace)
                        Part.Size = Vector3.new(1, 1, 1)
                        Part.Color = Color3.new(0, 1, 0)
                        Part.Transparency = 0.5
                        Part.Shape = "Ball"
                        Part.Anchored = true
                        Part.Position = v.Position + Vector3.new(0, 3, 0)
                        Part.CanCollide = false
                        Part.TopSurface = "Smooth"
                        Part.BottomSurface = "Smooth"
                        
                        table.insert(Parts, Part)
                    end
                    
                    for i,v in next, Points do
                        Parts[i]:Destroy()
                        if v.Action == Enum.PathWaypointAction.Jump then
                            LocalPlayer.Character.Humanoid.Jump = true
                        end
                        LocalPlayer.Character.Humanoid:MoveTo(v.Position)
                        LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
                    end
                end
            end
        end)
		
        if Settings["Thrix"]["Settings"]["Waypoints"] == nil then
            Settings["Thrix"]["Settings"]["Waypoints"] = {}
            SaveSettings()
        end
		
        local PlaceID = tostring(game.PlaceId)
        if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID] == nil then
            Settings["Thrix"]["Settings"]["Waypoints"][PlaceID] = {}
            SaveSettings()
        end

        local Waypoints = {}
        local function Waypoint(Name, Position)
            local Part = Instance.new("Part", Workspace)
            Part.BottomSurface = Enum.SurfaceType.Smooth
            Part.CanCollide = false
            Part.CanQuery = false
            Part.CanTouch = false
            Part.Size = Vector3.new(0.001, 0.001, 0.001)
            Part.TopSurface = Enum.SurfaceType.Smooth
            Part.Transparency = 1
            Part.CFrame = Position * CFrame.new(0, -1.5, 0)
            Part.Anchored = true
            
            local Waypoint = Instance.new("BillboardGui", WaypointFolder)
            Waypoint.Active = true
            Waypoint.AlwaysOnTop = true
            Waypoint.Size = UDim2.fromOffset(50, 50)
            Waypoint.SizeOffset = Vector2.new(0, 0.75)
            Waypoint.StudsOffsetWorldSpace = Vector3.new(0, 0, 0)
            Waypoint.Adornee = Part
            Waypoint.Enabled = Settings["Thrix"]["Settings"]["Markers"]

            local Frame = Instance.new("Frame", Waypoint)
            Frame.BackgroundTransparency = 1
            Frame.Size = UDim2.fromScale(1, 1)

            local Content = Instance.new("Frame", Frame)
            Content.BackgroundTransparency = 1
            Content.Size = UDim2.fromScale(1, 1)

            local Tail = Instance.new("Frame", Content)
            Tail.AnchorPoint = Vector2.new(0.5, 0.5)
            Tail.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
            Tail.BorderSizePixel = 0
            Tail.Position = UDim2.fromScale(0.5, 0.854)
            Tail.Rotation = 45
            Tail.Size = UDim2.fromScale(0.5, 0.5)
                
            local Border = Instance.new("Frame", Content)
            Border.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
            Border.Size = UDim2.fromScale(1, 1)

            local Circle = Instance.new("UICorner", Border)
            Circle.CornerRadius = UDim.new(1, 0)

            local Label = Instance.new("TextButton", Content)
            Label.Font = Enum.Font.SourceSans
            Label.TextColor3 = Color3.fromRGB(0, 0, 0)
            Label.TextSize = 14
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
            Label.Position = UDim2.fromScale(0.5, 0.5)
            Label.Size = UDim2.fromScale(0.9, 0.9)
            Label.Text = Name
            Label.ZIndex = 2
            Label.AutoButtonColor = false

            Label.MouseButton1Click:Connect(function()
                if LocalPlayer.Character then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Position
                end
            end)

            local Circle = Instance.new("UICorner", Label)
            Circle.CornerRadius = UDim.new(1, 0)
            
            if Waypoints[Name] then Waypoints[Name]:Destroy() end
            Waypoints[Name] = Waypoint

            return Waypoint
        end

        for i,v in pairs(Settings["Thrix"]["Settings"]["Waypoints"][PlaceID]) do
            Waypoint(i, CFrame.new(table.unpack(v)))
        end
        
        AddFunction({"setwaypoint", "setwp"}, "Creates a waypoint at your current location.", function(Name)
            Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name] = string.split(tostring(LocalPlayer.Character.HumanoidRootPart.CFrame), ", ")
            Waypoint(Name, LocalPlayer.Character.HumanoidRootPart.CFrame)
            SaveSettings()
        end)
        
        AddFunction({"deletewaypoint", "delwp"}, "Deletes the selected waypoint.", function(Name)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name] then
                Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name] = nil
                Waypoints[Name]:Destroy()
            else
                warn("Invalid Waypoint.")
            end
            
            SaveSettings()
        end)

        AddFunction({"waypoint", "wp"}, "Teleports you to the selected waypoint.", function(Name)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name] then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name]))
            else
                warn("Invalid Waypoint.")
            end
        end)
        
        AddFunction({"pathfindwaypoint", "pfwp"}, "Makes you walt to the selected waypoint.", function(Name)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name] then
                local To = CFrame.new(table.unpack(Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Name])).p
                local From = LocalPlayer.Character.HumanoidRootPart.Position
                
                local Path = PathfindingService:FindPathAsync(From, To)
                local Points = Path:GetWaypoints()
                local Parts = {}
                
                for i,v in next, Points do
                    local Part = Instance.new("Part", game.Workspace)
                    Part.Size = Vector3.new(1, 1, 1)
                    Part.Color = Color3.new(0, 1, 0)
                    Part.Transparency = 0.5
                    Part.Shape = "Ball"
                    Part.Anchored = true
                    Part.Position = v.Position + Vector3.new(0, 3, 0)
                    Part.CanCollide = false
                    Part.TopSurface = "Smooth"
                    Part.BottomSurface = "Smooth"
                    
                    table.insert(Parts, Part)
                end
                
                for i,v in next, Points do
                    Parts[i]:Destroy()
                    if v.Action == Enum.PathWaypointAction.Jump then
                        LocalPlayer.Character.Humanoid.Jump = true
                    end
                    LocalPlayer.Character.Humanoid:MoveTo(v.Position)
                    LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
                end
            else
                warn("Invalid Waypoint.")
            end
        end)

        local ChamsConnections = {}

        AddFunction({"chams", "esp"}, "Highlights Players through walls.", function(r, g, b)
            local Color = Color3.fromRGB(tonumber(r) or 255, tonumber(g) or 255, tonumber(b) or 255)
            
            Highlight.RemoveHighlightGuis()
            
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
            
            Highlight.CreateGui()
            
            for _, Player in next, game.Players:GetChildren() do
                if Player ~= game.Players.LocalPlayer then
                    if Player.Character then
                        Highlight.HighlightBody(Player.Character, Color)
                    end

                    local Connection = Player.CharacterAdded:Connect(function(Character)
                        local Humanoid = Character:WaitForChild("Humanoid")
                        Highlight.HighlightBody(Character, Color)
                    end)
                    
                    table.insert(ChamsConnections, Connection)
                end
            end
            
            local Connection = Players.PlayerAdded:Connect(function(Player)
                local Connection = Player.CharacterAdded:Connect(function(Character)
                    local Humanoid = Character:WaitForChild("Humanoid")
                    Highlight.HighlightBody(Character, Color)
                end)
                
                table.insert(ChamsConnections, Connection)
            end)
            
            table.insert(ChamsConnections, Connection)
        end)

        AddFunction({"teamchams", "teamesp"}, "Highlights Players through walls by team.", function()
            Highlight.RemoveHighlightGuis()
        
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
            
            Highlight.CreateGui()
            
            for _, Player in next, game.Players:GetChildren() do
                if Player ~= game.Players.LocalPlayer then
                    if Player.Character then
                        Highlight.HighlightBody(Player.Character, Player.TeamColor)
                    end

                    local Connection = Player.CharacterAdded:Connect(function(Character)
                        local Humanoid = Character:WaitForChild("Humanoid")
                        Highlight.HighlightBody(Character, Player.TeamColor)
                    end)
                    
                    table.insert(ChamsConnections, Connection)
                end
            end
            
            local Connection = Players.PlayerAdded:Connect(function(Player)
                local Connection = Player.CharacterAdded:Connect(function(Character)
                    local Humanoid = Character:WaitForChild("Humanoid")
                    Highlight.HighlightBody(Character, Player.TeamColor)
                end)
                
                table.insert(ChamsConnections, Connection)
            end)
            
            table.insert(ChamsConnections, Connection)
        end)

        AddFunction({"nochams", "noesp"}, "Disables chams.", function()
            Highlight.RemoveHighlightGuis()
        
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
        end)

        AddFunction({"firecd", "fireclickdetectors"}, "Fires all clickdetectors in the workspace.", function()
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
        end)
        
        AddFunction({"firetouch", "firetouchinterests"}, "Fires all touchinterests in the workspace.", function()
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
                end
            end
        end)
        
        AddFunction({"fireprox", "fireproximityprompts"}, "Fires all proximityprompts in the workspace.", function()
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                    fireproximityprompt(v)
                end
            end
        end)
        
        AddFunction("team", "If possible, switch to the selected team.", function(...)
            local Args = {...}

            if LocalPlayer.Character and LocalPlayer.Character.Parent and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

                local CurrentTeam
                
                for _, v in next, Teams:GetChildren() do
                    if v.Name == table.concat(Args, " ") then
                        CurrentTeam = v
                    end
                end
                
                if CurrentTeam then
                    for _, v in next, Workspace:GetDescendants() do
                        if v:IsA("SpawnLocation") and v.TeamColor == CurrentTeam.TeamColor and v.AllowTeamChangeOnTouch then
                            for i = 0, 1 do
                                firetouchinterest(HumanoidRootPart, v, i)
                            end
                        end
                    end
                else
                    print("Team not found.")
                end
            end
        end)

        local ClimbStepped
        AddFunction({"spider", "wallclimb"}, "Lets you climb on walls.", function(Speed)
            if ClimbStepped then
                ClimbStepped:Disconnect()
            end

            local Climbing = false
            local Speed = Speed or 15

            ClimbStepped = RunService.RenderStepped:Connect(function()
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character.HumanoidRootPart
                local Humanoid = Character.Humanoid
    
                local Characters = {}
                for _,v in pairs(Players:GetChildren()) do
                    table.insert(Characters, v.Character)
                end
    
                local MoveDirection = (Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) and Humanoid.MoveDirection.Unit * 2 or Vector3.new(0, 0, 0))
                local RaycastParams = RaycastParams.new()
                RaycastParams.FilterDescendantsInstances = Characters
                RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    
                local Rays = {
                    Workspace:Raycast(HumanoidRootPart.Position, MoveDirection + Vector3.new(0, 0.1, 0), RaycastParams),
                    Workspace:Raycast(HumanoidRootPart.Position, MoveDirection - Vector3.new(0, Humanoid.HipHeight, 0), RaycastParams)
                }
    
                if Climbing and not Rays[1] and not Rays[2] then
                    HumanoidRootPart.Velocity = Vector3.new(HumanoidRootPart.Velocity.X, 0, HumanoidRootPart.Velocity.Z)
                elseif not Climbing then
                    SetStatesEnabled(true)
                end
    
                Climbing = (Rays[1] or Rays[2]) and true or false
                if (Rays[1] or Rays[2]) and (Rays[1] or Rays[2]).Normal.Y == 0 then
                    if Rays[1] or Rays[2] then
                        SetStatesEnabled(false)

                        if Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing then
                            Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
                        end
                        
                        HumanoidRootPart.Velocity = Vector3.new(HumanoidRootPart.Velocity.X - (HumanoidRootPart.CFrame.lookVector.X / 2), Speed, HumanoidRootPart.Velocity.Z - (HumanoidRootPart.CFrame.lookVector.Z / 2))
                    end
                end
            end)
        end)

        AddFunction({"unspider", "unwallclimb"}, "Stops climbing on walls.", function()
            if ClimbStepped then
                ClimbStepped:Disconnect()
                SetStatesEnabled(true)
            end
        end)

        AddFunction("swim", "Lets you swim in the air.", function()
            SetStatesEnabled(false)
            game.Workspace.Gravity = 0
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end)

        AddFunction("unswim", "Stops swimming in the air.", function()
            SetStatesEnabled(true)
            game.Workspace.Gravity = 196.2
        end)

        AddFunction({"noname", "nobillboardgui"}, "Disables nametags in some games.", function()
            for _,v in pairs(LocalPlayer.Character:GetDescendants())do
                if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
                    v:Destroy()
                end
            end
        end)

        AddFunction({"reset", "re"}, "Resets your player.", function()
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

        AddFunction({"spawn", "gr"}, "Respawns your player.", function()
            if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then 
                LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15) 
            end
            LocalPlayer.Character:ClearAllChildren()
            
            LocalPlayer.Character = Instance.new("Model", workspace)
            LocalPlayer.Character:Destroy()
        end)
        
        AddFunction({"rejoin", "rj"}, "Makes your player rejoin.", function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end)
        
        AddFunction("posrj", "Makes your player rejoin and teleport to your current position.", function()
            queue_on_teleport(string.format("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer repeat wait() until game:GetService('Players').LocalPlayer.Character repeat wait() until game:GetService('Players').LocalPlayer.Character.HumanoidRootPart wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(%s)", tostring(LocalPlayer.Character.HumanoidRootPart.CFrame)))

            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end)
        
        AddFunction("report", "Reports the chosen player the chosen amount of times.", function(Player, Amount)
            local Player = GetPlayer(Player)
            local Amount = Amount
                
            local Sources = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/ReportReasons.lua"))()
            
            for _, Player in pairs(Player) do
                for i = 1, Amount do
                    local Catagory = Sources[math.random(1, #Sources)]
                    local Reason = Catagory[2][math.random(1, #Catagory[2])]

                    Players:ReportAbuse(Player, Catagory[1], Reason)
                    print(string.format("Reported %s for %s with message: %s", Player.Name, Catagory[1], Reason))

                    wait(0.5)
                end
            end
        end)
			
        AddFunction({"load", "exec"}, "Runs the chosen file.", function(File)
            if isfile(File) then
                loadfile(File)()
            else
                print("404: File not found.")
            end
        end)
        
        AddFunction({"delete", "del", "delfile"}, "Deletes the chosen file.", function(File)
            if isfolder(File) then
                delfolder(File)
                print("Deleted folder: " .. File)
            elseif isfile(File) then
        	    delfile(File)
        	    print("Deleted file: " .. File)
        	else 
        	    print("404: File not found.")
        	end
        end)

        AddFunction("join", "Teleports you to the game of the join code.", function(Code)
            TeleportToCode(Code)
        end)

        AddFunction("gencode", "Generates a join code.", function()
            local Code
            Code = UpdateCodes()

            setclipboard(Code)
            StarterGui:SetCore("SendNotification", {
                Title = "Join Code",
                Text = "Copied code to clipboard: " .. Code,
            })
        end)

        AddFunction({"chatlogs", "clogs"}, "Opens chat logs.", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Scripts/ChatLogs.lua"))()
        end)
	
        AddFunction({"remotespy", "rspy"}, "Opens remote spy", function()
            loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
        end)

        AddFunction({"dex", "explorer"}, "Opens dex.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/YREfugjX"))()
        end)

        AddFunction({"exit", "close"}, "Closes your game.", function()
            game:Shutdown()
        end)
			
	    AddFunction({"install", "installplugin"}, "Installs the chosen plugin.", function(Plugin)
            local Success, Error = pcall(function() 
                if Plugin == "local" then 
                    Plugin = game.PlaceId 
                end 
                
                game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Plugin)
            end)

            if not Success then
                warn("Plugin not found.", Error)
                return
            else
                local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Plugin .. "/install.lua"))()
                
                for _, File in next, Files do
                    writefile("Thrixmin/Plugins/" .. File, game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Plugin .. "/" .. File:gsub(" ", "%%20")))
                    print(string.format("Installed %s from plugin: %s", File, Plugin))

                    local Plugin = loadfile("Thrixmin/Plugins/" .. File)()

                    for Name, Command in next, Plugin.Commands do
                        AddFunction({Name, unpack(Command.Aliases or {})}, Command.Description, Command.Function, Plugin.Name or Plugin.PluginName)
                    end
                end
            end
        end)
        
        AddFunction({"uninstall", "uninstallplugin"}, "Uninstalls the chosen plugin.", function(Plugin)
            local Success, Error = pcall(function() 
                if Plugin == "local" then 
                    Plugin = game.PlaceId 
                end 
                
                game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Plugin) 
            end)

            if not Success then
                warn("Plugin not found.")
                return
            else
                local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Plugin .. "/install.lua"))()
                
                for _, v in next, Files do
                    for _, Command in next, loadstring(readfile("Thrixmin/Plugins/" .. v))() do
                        for _, v in next, {Name, unpack(Command.Aliases or {})} do
                            Settings["Thrix"]["Functions"][v] = nil
                        end
                    end

                    delfile("Thrixmin/Plugins/" .. v)
                    print(string.format("Deleted %s from plugin: %s", v, Plugin))
                end
            end
        end)

        AddFunction("addkeybind", "Adds a keybind to the chosen command.", function(Key, Command, ...)
            local Args = {...}
            local Key = string.lower(Key)

            if not Settings["Thrix"]["Settings"]["Keybinds"][Key] then
                Settings["Thrix"]["Settings"]["Keybinds"][Key] = {}
            end

            Settings["Thrix"]["Settings"]["Keybinds"][Key][Command] = Args

            SaveSettings()
        end)

        AddFunction("removekeybind", "Removes a keybind from the chosen command.", function(Key, Command)
            local Key = string.lower(Key)

            if Settings["Thrix"]["Settings"]["Keybinds"][Key] then
                if Settings["Thrix"]["Settings"]["Keybinds"][Key][Command] then
                    Settings["Thrix"]["Settings"]["Keybinds"][Key][Command] = nil

                    if #Settings["Thrix"]["Settings"]["Keybinds"][Key] == 0 then
                        Settings["Thrix"]["Settings"]["Keybinds"][Key] = nil
                    end
                    
                    SaveSettings()
                end
            end
        end)

        AddFunction("addalias", "Adds an alias to the chosen command.", function(Command, Alias)
            if Settings["Thrix"]["Functions"][Command] then
                Settings["Thrix"]["Functions"][Alias] = Settings["Thrix"]["Functions"][Command]

                if not Settings["Thrix"]["Settings"]["Aliases"][Command] then
                    Settings["Thrix"]["Settings"]["Aliases"][Command] = {}
                end

                table.insert(Settings["Thrix"]["Settings"]["Aliases"][Command], Alias)
                SaveSettings()

                print(string.format("Added alias %s to command %s.", Alias, Command))
            end
        end)

        AddFunction("removealias", "Removes the chosen alias.", function(Alias)
            for Command, Aliases in next, Settings["Thrix"]["Settings"]["Aliases"] do
                for i, v in next, Aliases do
                    if v == Alias then
                        table.remove(Aliases, i)
                    end
                end

                if #Aliases == 0 then
                    Settings["Thrix"]["Settings"]["Aliases"][Command] = nil
                end
            end

            SaveSettings()
        end)
        
        local Event = Instance.new("BindableEvent")
        Event.Event:Connect(function(Command, Args)
            Command:Execute(Args)
        end)

        local namecall
        namecall = hookmetamethod(game, "__namecall", newcclosure(function(self, Message, ...)
            if getnamecallmethod() == "FireServer" and tostring(self) == "SayMessageRequest" then
                local Args = string.split(Message, " ")

                if string.sub(Message, 1, #Settings["Thrix"]["Settings"]["Prefix"]) == Settings["Thrix"]["Settings"]["Prefix"] then
                    local Command = FindClosestCommand(string.sub(string.lower(Args[1]), #Settings["Thrix"]["Settings"]["Prefix"] + 1))

                    if Command then
                        table.remove(Args, 1)
                        Event:Fire(Command, Args)
                        
                        if Settings["Thrix"]["Settings"]["Silent"] then
                            return
                        end
                    end
                end
            end
            
            return namecall(self, Message, ...)
        end))
        
        local CommandAction
        CommandAction = UserInputService.InputBegan:Connect(function(Key, Typing)
            if not Typing then
                local Key = string.lower(UserInputService:GetStringForKeyCode(Key.KeyCode))

                if Key == string.lower(Settings["Thrix"]["Settings"]["Prefix"]) then
                    Frame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.7)
                    TextBox:CaptureFocus()
                elseif Settings["Thrix"]["Settings"]["Keybinds"][Key] then
                    for Command, Args in next, Settings["Thrix"]["Settings"]["Keybinds"][Key] do
                        ExecuteCommand(Command, Args)
                    end
                end
            end
        end)
        
        TextBox.FocusLost:Connect(function()
        	Frame:TweenPosition(UDim2.new(0.5, 0, 1.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5)

        	local Args = TextBox.Text:split(" ")

            if string.sub(TextBox.Text, 1, #Settings["Thrix"]["Settings"]["Prefix"]) == Settings["Thrix"]["Settings"]["Prefix"] then
                local Command = FindClosestCommand(string.sub(string.lower(Args[1]), #Settings["Thrix"]["Settings"]["Prefix"] + 1))

                if Command then
                    table.remove(Args, 1)
                    Command:Execute(Args)
                end
            end

            TextBox.Text = ""
        end)

        TextBox:GetPropertyChangedSignal("Text"):Connect(function()
            local Command = table.foreach(Settings["Thrix"]["Functions"], function(Command, v)
                if TextBox.Text == "" then return false end
                if string.lower(TextBox.Text):sub(1, #TextBox.Text) == string.lower(Settings["Thrix"]["Settings"]["Prefix"] .. Command):sub(1, #TextBox.Text) then
                    return Command
                end
            end)

            if Command then
                AutoComplete.Text = string.format("%s%s%s", string.rep(" ", #Command - #TextBox.Text + 1), Settings["Thrix"]["Settings"]["Prefix"], Command)
            else
                AutoComplete.Text = ""
            end
        end)
        
        UserInputService.InputBegan:Connect(function(Key)
            if Key.KeyCode then
                if Key.KeyCode == Enum.KeyCode.Tab then
                    if TextBox.Focused then
                        local Command = table.foreach(Settings["Thrix"]["Functions"], function(Command, v)
                            if TextBox.Text == "" then return false end
                            if string.lower(TextBox.Text):sub(1, #TextBox.Text) == string.lower(Settings["Thrix"]["Settings"]["Prefix"] .. Command):sub(1, #TextBox.Text) then
                                return Command
                            end
                        end)

                        if Command then
                            wait()
                            TextBox.Text = string.format("%s%s", Settings["Thrix"]["Settings"]["Prefix"], Command)
                            AutoComplete.Text = ""
                            TextBox.CursorPosition = #TextBox.Text + 1
                        end
                    end
                end
            end
        end)

        local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
        local ChatMain = require(PlayerScripts:WaitForChild("ChatScript"):WaitForChild("ChatMain"))
        local MessagePosted = ChatMain.MessagePosted

        thread(function()
            repeat wait() until PlayerGui:FindFirstChild("Chat").Frame.Visible

            hookfunction(MessagePosted.fire, function(self, Message)
                thread(function()
                    if string.sub(Message, 1, 2) == "/e" or not Settings["Thrix"]["Settings"]["AntiChatLog"] then
                        Players:Chat(Message)
                    end
                end)
            end)
        end)

        AddFunction("prefix", "Sets your command prefix.", function(Prefix)
            Settings["Thrix"]["Settings"]["Prefix"] = Prefix
            
            SaveSettings()

            print(string.format("Set command prefix to \"%s\".", Prefix))
        end)
        
        AddFunction({"end", "quit"}, "Stops the admin from running.", function()
            local _game = getrawmetatable(game)
            setreadonly(_game, false)
            _game.__namecall = namecall

            CommandAction:Disconnect()
            
            getgenv().Thrixmin = false
            print("Quit Thrixtle admin.")
            
            wait(1)
            
            ScreenGui:Destroy()
        end)
        
        AddFunction("discord", "Invites you to the Thrixmin discord.", function()
            request({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    ['Origin'] = 'https://discord.com'
                },
                Body = HttpService:JSONEncode({
                    ["cmd"] = "INVITE_BROWSER",
                    ["args"] = {
                        ["code"] = "32th2NqaUT"
                    },
                    ["nonce"] = "Thrixmin"
                })
            })
        end)
		
        for _, File in next, listfiles("Thrixmin/Plugins") do
            if isfile(File) then
                local Plugin = loadstring(readfile(File))()

                for Name, Command in next, Plugin.Commands do
                    AddFunction({Name, unpack(Command.Aliases or {})}, Command.Description, Command.Function, Plugin.Name or Plugin.PluginName)
                end
            end
        end

        local Help = Core.Section("Help")

        Help.Title("Player")
        Help.Icon("Thrixmin/Assets/Player.png")

        Help.Slider("Walkspeed", 16, 0, 160, function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end)

        Help.Slider("Jumppower", 50, 0, 100, function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end)

        Help.Switch("Fly", false, function(Value)
            if Value then
                ExecuteCommand("fly")
            else
                ExecuteCommand("unfly")
            end
        end)

        local Record = Core.Section("Record")

        Record.Title("Thrixmin")
        Record.Icon("Thrixmin/Assets/Logo-White.png")

        Record.Divider("Thrixmin", "Edit the settings of Thrixmin.")

        Record.Switch("Silent Chat", Settings["Thrix"]["Settings"]["Silent"], function(Value)
            Settings["Thrix"]["Settings"]["Silent"] = Value

            SaveSettings()

            if Value then
                print("Enabled silent chat.")
            else
                print("Disabled silent chat.")
            end
        end)

        Record.Switch("Auto Correct", Settings["Thrix"]["Settings"]["AutoCorrect"], function(Value)
            Settings["Thrix"]["Settings"]["AutoCorrect"] = Value

            SaveSettings()

            if Value then
                print("Enabled auto correct.")
            else
                print("Disabled auto correct.")
            end
        end)

        Record.Switch("Anti Chat Log", Settings["Thrix"]["Settings"]["AntiChatLog"], function(Value)
            Settings["Thrix"]["Settings"]["AntiChatLog"] = Value

            SaveSettings()

            if Value then
                print("Enabled anti chatlog.")
            else
                print("Disabled anti chatlog.")
            end
        end)
        
        Record.Switch("Waypoints", Settings["Thrix"]["Settings"]["Markers"], function(Value)
            for _, Waypoint in pairs(Waypoints) do
                Waypoint.Enabled = Value
            end

            Settings["Thrix"]["Settings"]["Markers"] = Value

            SaveSettings()
        end)
    end)
    
    if not Source then
        warn(Error)

        getgenv().Thrixmin = false
    end
end

main()
    