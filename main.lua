
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
        • AddFunction - Adds a function to the admin.
        • GetPlayer - Returns a player of a shortend string of the player's name.
        • swait - A wait function that is ~10 times faster than a normal wait.
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
        ["Version"] = "v1.4.3",
        ["Developer"] = "Bug#4193",
    },
    ["Debug"] = true,
    ["Thrix"] = {
        ["Settings"] = {
            ["Prefix"] = "-",
            ["Silent"] = true
        },
        ["OutputTypes"] = {
              Output = {},
              SyntaxErrors = {}
        },
        ["Functions"] = {}
    }
}

if isfile("Thrixmin/Settings.json") then
    Settings["Thrix"]["Settings"] = game:GetService("HttpService"):JSONDecode(readfile("Thrixmin/Settings.json"))
else
    if not isfolder("Thrixmin") then
        makefolder("Thrixmin")
    end
    writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
end

if not isfile("Thrixmin/UISettings.json") then
	writefile("Thrixmin/UISettings.json", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/UISettings.json"))
end

Settings["Thrix"]["UI"] = game:GetService("HttpService"):JSONDecode(readfile("Thrixmin/UISettings.json"))

if not isfolder("Thrixmin/Plugins") then
    makefolder("Thrixmin/Plugins")
end
 
if not isfolder("Thrixmin/Assets") then
    makefolder("Thrixmin/Assets")
end

if not isfile("Thrixmin/Assets/Logo.png") then
    writefile("Thrixmin/Assets/Logo.png", game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Logo.png"))
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
local UserInputService = game:GetService("UserInputService")
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

local function GetPlayer(Name)
    if string.lower(Name) == "random" then
        return game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    elseif string.lower(Name) == "closest" then
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
        
        return Closest
    elseif string.lower(Name) == "farthest" then
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
        
        return Farthest
    else
        for i,v in next, game:GetService("Players"):GetChildren() do
            if v:IsA("Player") and string.lower(string.sub((v.Name), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) or string.lower(string.sub((v.DisplayName), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) then
                return v
            end
        end
    end
    
    return false
end

local States = {"Climbing", "FallingDown", "Flying", "Jumping", "Running", "Swimming", "Freefall", "GettingUp", "Landed", "Seated", "PlatformStanding", "Ragdoll", "Physics", "RunningNoPhysics", "StrafingNoPhysics"}
local SetStatesEnabled = function(Enabled)
    for _,v in pairs(States) do
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType[v], Enabled)
    end
end

local Git = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/CodeTransfer/Git.lua"))()
local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/Highlight.lua"))()

local function GetCodes()
    return HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Thrixmin/JoinCodes/main/Codes.json"))
end

local function FlushCodes(Codes)
    for i,v in next, Codes do 
        if os.clock() - v.Time > 10800 then
            Codes[i] = nil
        end
    end

    return Codes
end

local function GenerateCode()
    return string.format("%04d", math.random(1, 9999)), {
        PlaceID = game.PlaceId,
        JobId = game.JobId,
        Time = os.clock()
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
        end
        f()
    end)
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
                thread(function()
                    self.Arguments = {
                        args
                    }
                    pcall(FuncExec, args)
                end)
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
    print(Settings["Info"]["Name"], Settings["Info"]["Version"], "Loaded")
    print(string.format("Prefix - \"%s\"", Settings["Thrix"]["Settings"]["Prefix"]))
    
    local Source, Error = pcall(function()
        Settings["Thrix"].AddFunction({"goto", "tp"}, "Teleports your player to the selected player.", function(Args)
            LocalPlayer.Character.HumanoidRootPart.CFrame = GetPlayer(Args[2]).Character.HumanoidRootPart.CFrame
        end)
        
        Settings["Thrix"].AddFunction({"ruinreplication", "breaknet"}, "Breaks the selected players net.", function(Args)
            for _,v in next, GetPlayer(Args[2]).Character:GetDescendants() do
                if v:IsA("Part") or v:IsA("BasePart") then
                    game:GetService("RunService").Heartbeat:Connect(function()
                    	sethiddenproperty(v, "NetworkIsSleeping", true)
                    end)
                end
            end
        end)
        
        Settings["Thrix"].AddFunction({"gameteleport", "gametp"}, "Teleports you to the selected game.", function(Args)
            game:GetService("TeleportService"):Teleport(Args[2], LocalPlayer)
        end)
        
        Settings["Thrix"].AddFunction({"walkspeed", "ws"}, "Sets your character's walkspeed to the chosen amount.", function(Args)
            LocalPlayer.Character.Humanoid.WalkSpeed = Args[2] or 16
            print(string.format("Set Walk Speed to %s.", Args[2] or 16))
        end)
        
        Settings["Thrix"].AddFunction({"jumppower", "jp"}, "Sets your character's jumppower to the chosen amount.", function(Args)
            LocalPlayer.Character.Humanoid.JumpPower = Args[2] or 50
            print(string.format("Set Jump Power to %s.", Args[2] or 50))
        end)

        Settings["Thrix"].AddFunction({"hipheight", "height"}, "Sets your hip height to the chosen amount.", function(Args)
            LocalPlayer.Character.Humanoid.HipHeight = Args[2] or 2
            print(string.format("Set Hip Height to %s.", Args[2] or 2))
        end)
        
        Settings["Thrix"].AddFunction({"gravity", "grav"}, "Sets the workspace's gravity to the chosen amount.", function(Args)
            game.Workspace.Gravity = Args[2] or 196.2
            print(string.format("Set Gravity to %s.", Args[2] or 196.2))
        end)

        Settings["Thrix"].AddFunction({"timeofday", "time"}, "Sets the time to the selected time.", function(Args)
            game.Lighting.ClockTime = Args[2] or 14
            print(string.format("Set Clock Time to %s.", Args[2] or 14))
        end)

        Settings["Thrix"].AddFunction("sit", "Makes your player sit down.", function(Args)
            LocalPlayer.Character.Humanoid.Sit = true
        end)

        Settings["Thrix"].AddFunction("unsit", "Makes your player stand up.", function(Args)
            LocalPlayer.Character.Humanoid.Sit = false
        end)

        Settings["Thrix"].AddFunction({"platformstand", "stun"}, "Stuns your player.", function(Args)
            LocalPlayer.Character.Humanoid.PlatformStand = true
        end)

        Settings["Thrix"].AddFunction({"unplatformstand", "unstun"}, "Unstuns your player.", function(Args)
            LocalPlayer.Character.Humanoid.PlatformStand = false
        end)

        Settings["Thrix"].AddFunction({"freeze", "fr"}, "Freezes your player in place.", function(Args)
            LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end)

        Settings["Thrix"].AddFunction({"unfreeze", "unfr"}, "Unfreezes your player in place.", function(Args)
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end)

        Settings["Thrix"].AddFunction("offset", "Offsets your player with a x, y and z value.", function(Args)
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(Args[2] or 0, Args[3] or 0, Args[4] or 0)
        end)
        
        Settings["Thrix"].AddFunction("spin", "Spins your character.", function(Args)
            if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spin") then
                LocalPlayer.Character.HumanoidRootPart.Spin:Destroy()
            end

            local Spin = Instance.new("BodyAngularVelocity", LocalPlayer.Character.HumanoidRootPart)
            Spin.Name = "Spin"
            Spin.MaxTorque = Vector3.new(0, math.huge, 0)
            Spin.AngularVelocity = Vector3.new(0, tonumber(Args[2]) or 5, 0)
        end)

        Settings["Thrix"].AddFunction("unspin", "Unspins your character.", function(Args)
            if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spin") then
                LocalPlayer.Character.HumanoidRootPart.Spin:Destroy()
            end
        end)

        Settings["Thrix"].AddFunction("animspeed", "Changes the speed of your players animation.", function(Args)
            for i,v in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                v:AdjustSpeed(tonumber(Args[2]) or 1)
            end
        end)

        Settings["Thrix"].AddFunction("noanim", "Stops your players animation.", function(Args)
            LocalPlayer.Character.Animate.Disabled = true
        end)

        Settings["Thrix"].AddFunction("reanim", "Starts your players animation.", function(Args)
            LocalPlayer.Character.Animate.Disabled = false
        end)

        local Noclip
        local Clip = true
        Settings["Thrix"].AddFunction("noclip", "Noclips your character.", function(Args)
            Clip = false
            Noclip = game:GetService("RunService").Stepped:Connect(function()
                if Clip == false and game:GetService("Players").LocalPlayer.Character then
                    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == true then
                        	v.CanCollide = false
                        end
                    end
                end
            end)
        end)

        Settings["Thrix"].AddFunction("clip", "Clips your character.", function(Args)
            if Noclip then
                Noclip:Disconnect()
            end
            Clip = true
        end)
        
        Settings["Thrix"].AddFunction({"serverhop", "sh"}, "Teleports you to a different server.", function(Args)
            for i, v in pairs(game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                if v.playing < v.maxPlayers then
                    print(string.format("Teleporting to https://roblox.com/discover#/rg-join/%s/%s/, Players: %s, MaxPlayers: %s, Ping: %s, Fps: %s", game.PlaceId, v.id, v.playing, v.maxPlayers, v.ping, v.fps))
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
                end
            end

            print("No servers found.")
        end)

        Settings["Thrix"].AddFunction({"sync", "syncanim"}, "Synchronizes your current animation with another players.", function(Args)
            for _,v in next, GetPlayer(Args[2]).Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                for _,v2 in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    v2.TimePosition = v.TimePosition
                end
            end
        end)

        Settings["Thrix"].AddFunction({"view", "spectate"}, "Spectates the chosen player.", function(Args)
            game.Workspace.Camera.CameraSubject = GetPlayer(Args[2]).Character.Humanoid
            print(string.format("Spectating %s.", GetPlayer(Args[2]).Name))
        end)
        
        Settings["Thrix"].AddFunction({"unview", "unspectate"}, "Makes your camera go back to your player.", function(Args)
            game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
        end)
        
        local Flying = false
        Settings["Thrix"].AddFunction({"fly", "vfly", "vehiclefly"}, "Makes your player fly.", function(Args)
            if Flying then Flying = false end
            local Speed = tonumber(Args[2]) or 1
            if KeyDown or KeyUp then 
                KeyDown:Disconnect() 
                KeyUp:Disconnect() 
            end
        
            if string.lower(Args[1]) == Settings["Thrix"]["Settings"]["Prefix"] .. "fly" then
                LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
            end
        
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
                elseif not (Controls.L + Controls.R ~= 0 or Controls.F + Controls.B ~= 0 or Controls.Q + Controls.E ~= 0) and SPEED ~= 0 then
                    sSpeed = 0
                end
                if (Controls.L + Controls.R) ~= 0 or (Controls.F + Controls.B) ~= 0 or (Controls.Q + Controls.E) ~= 0 then
                    BodyVelocity.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Controls.F + Controls.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(Controls.L + Controls.R, (Controls.F + Controls.B + Controls.Q + Controls.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * sSpeed
                    lControls = {F = Controls.F, B = Controls.B, L = Controls.L, R = Controls.R}
                elseif (Controls.L + Controls.R) == 0 and (Controls.F + Controls.B) == 0 and (Controls.Q + Controls.E) == 0 and SPEED ~= 0 then
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
        
        Settings["Thrix"].AddFunction({"unfly", "unvfly", "unvehiclefly"}, "Makes your player stop flying.", function(Args)
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
        
        Settings["Thrix"].AddFunction({"pathfind", "walkto"}, "Walks to the selected player using pathfinding.", function(Args)
            local Player = GetPlayer(Args[2])
            local To = Player.Character.HumanoidRootPart.Position
            local From =  LocalPlayer.Character.HumanoidRootPart.Position
            
            local Path = game:GetService("PathfindingService"):FindPathAsync(From, To)
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
        end)
		
        if Settings["Thrix"]["Settings"]["Waypoints"] == nil then
            Settings["Thrix"]["Settings"]["Waypoints"] = {}
            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
        end
		
		local PlaceID = tostring(game.PlaceId)
		if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID] == nil then
			Settings["Thrix"]["Settings"]["Waypoints"][PlaceID] = {}
			writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
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
        
        Settings["Thrix"].AddFunction({"setwaypoint", "setwp"}, "Creates a waypoint at your current location.", function(Args)
            Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]] = string.split(tostring(LocalPlayer.Character.HumanoidRootPart.CFrame), ", ")
            Waypoint(Args[2], LocalPlayer.Character.HumanoidRootPart.CFrame)
            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
        end)
        
        Settings["Thrix"].AddFunction({"deletewaypoint", "delwp"}, "Deletes the selected waypoint.", function(Args)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]] then
                Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]] = nil
                Waypoints[Args[2]]:Destroy()
            else
                warn("Invalid Waypoint.")
            end
            
            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
        end)

        Settings["Thrix"].AddFunction({"waypoint", "wp"}, "Teleports you to the selected waypoint.", function(Args)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]] then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]]))
            else
                warn("Invalid Waypoint.")
            end
        end)
        
        Settings["Thrix"].AddFunction({"pathfindwaypoint", "pfwp"}, "Makes you walt to the selected waypoint.", function(Args)
            if Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]] then
                local To = CFrame.new(table.unpack(Settings["Thrix"]["Settings"]["Waypoints"][PlaceID][Args[2]])).p
                local From = LocalPlayer.Character.HumanoidRootPart.Position
                
                local Path = game:GetService("PathfindingService"):FindPathAsync(From, To)
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

        Settings["Thrix"].AddFunction({"chams", "esp"}, "Highlights Players through walls.", function(Args)
            local Color = Color3.fromRGB(Args[1] or 255, Args[2] or 255, Args[3] or 255)
            
            Highlight.RemoveHighlightGuis()
            
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
            
            Highlight.CreateGui()
            
            for Index,Player in next, game.Players:GetChildren() do
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
            
            local Connection = game:GetService("Players").PlayerAdded:Connect(function(Player)
                local Connection = Player.CharacterAdded:Connect(function(Character)
                    local Humanoid = Character:WaitForChild("Humanoid")
                    Highlight.HighlightBody(Character, Color)
                end)
                
                table.insert(ChamsConnections, Connection)
            end)
            
            table.insert(ChamsConnections, Connection)
        end)

        Settings["Thrix"].AddFunction({"teamchams", "teamesp"}, "Highlights Players through walls by team.", function(Args)
            Highlight.RemoveHighlightGuis()
        
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
            
            Highlight.CreateGui()
            
            for Index,Player in next, game.Players:GetChildren() do
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
            
            local Connection = game:GetService("Players").PlayerAdded:Connect(function(Player)
                local Connection = Player.CharacterAdded:Connect(function(Character)
                    local Humanoid = Character:WaitForChild("Humanoid")
                    Highlight.HighlightBody(Character, Player.TeamColor)
                end)
                
                table.insert(ChamsConnections, Connection)
            end)
            
            table.insert(ChamsConnections, Connection)
        end)

        Settings["Thrix"].AddFunction({"nochams", "noesp"}, "Disables chams.", function(Args)
            Highlight.RemoveHighlightGuis()
        
            for i,v in next, ChamsConnections do
                v:Disconnect()
            end
            
            ChamsConnections = {}
        end)

        Settings["Thrix"].AddFunction({"firecd", "fireclickdetectors"}, "Fires all clickdetectors in the workspace.", function(Args)
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
        end)
        
        Settings["Thrix"].AddFunction({"firetouch", "firetouchinterests"}, "Fires all touchinterests in the workspace.", function(Args)
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
                end
            end
        end)
        
        Settings["Thrix"].AddFunction({"fireprox", "fireproximityprompts"}, "Fires all proximityprompts in the workspace.", function(Args)
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                    fireproximityprompt(v)
                end
            end
        end)
        
        Settings["Thrix"].AddFunction("team", "If possible, switch to the selected team.", function(Args)
            table.remove(Args, 1)

            if LocalPlayer.Character and LocalPlayer.Character.Parent and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

                local CurrentTeam
                
                for _, v in next, game:GetService('Teams'):GetChildren() do
                    if v.Name == table.concat(Args, " ") then
                        CurrentTeam = v
                    end
                end
                
                if CurrentTeam then
                    for _, v in next, game:GetService('Workspace'):GetDescendants() do
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
        Settings["Thrix"].AddFunction({"spider", "wallclimb"}, "Lets you climb on walls.", function(Args)
            if ClimbStepped then
                ClimbStepped:Disconnect()
            end

            local Climbing = false
            local Speed = Args[2] or 15

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

        Settings["Thrix"].AddFunction({"unspider", "unwallclimb"}, "Stops climbing on walls.", function(Args)
            if ClimbStepped then
                ClimbStepped:Disconnect()
                SetStatesEnabled(true)
            end
        end)

        Settings["Thrix"].AddFunction("swim", "Lets you swim in the air.", function(Args)
            SetStatesEnabled(false)
            game.Workspace.Gravity = 0
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end)

        Settings["Thrix"].AddFunction("unswim", "Stops swimming in the air.", function(Args)
            SetStatesEnabled(true)
            game.Workspace.Gravity = 196.2
        end)

        Settings["Thrix"].AddFunction({"reset", "re"}, "Resets your player.", function(Args)
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
        
        Settings["Thrix"].AddFunction({"rejoin", "rj"}, "Makes your player rejoin.", function(Args)
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end)
        
        Settings["Thrix"].AddFunction("posrj", "Makes your player rejoin and teleport to your current position.", function(Args)
            queue_on_teleport("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer repeat wait() until game:GetService('Players').LocalPlayer.Character repeat wait() until game:GetService('Players').LocalPlayer.Character.HumanoidRootPart wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) .. ")")
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end)
        
        Settings["Thrix"].AddFunction("report", "Reports the chosen player the chosen amount of times.", function(Args)
            local Player = GetPlayer(Args[2])
            local Amount = Args[3]
            
            local Sources = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/ReportReasons.lua"))()
            
            for i = 1, Amount do
                local Catagory = Sources[math.random(1, #Sources)]
                local Reason = Catagory[2][math.random(1, #Catagory[2])]
                game:GetService("Players"):ReportAbuse(Player, Catagory[1], Reason)
                print(string.format("Reported %s for %s with message: %s", Player.Name, Catagory[1], Reason))
                wait(0.5)
            end
        end)
			
        Settings["Thrix"].AddFunction({"load", "exec"}, "Runs the chosen file.", function(Args)
            if isfile(Args[2]) then
                loadstring(readfile(Args[2]))()
            else
                print("404: File not found.")
            end
        end)
        
        Settings["Thrix"].AddFunction({"delete", "del", "delfile"}, "Deletes the chosen file.", function(Args)
            if isfolder(Args[2]) then
                delfolder(Args[2])
                print("Deleted folder: " .. Args[2])
            elseif isfile(Args[2]) then
        	    delfile(Args[2])
        	    print("Deleted file: " .. Args[2])
        	else 
        	    print("404: File not found.")
        	end
        end)

        Settings["Thrix"].AddFunction("join", "Teleports you to the game of the join code.", function(Args)
            TeleportToCode(Args[2])
        end)

        Settings["Thrix"].AddFunction("gencode", "Generates a join code.", function(Args)
            local Code = UpdateCodes()

            setclipboard(Code)
            StarterGui:SetCore("SendNotification", {
                Title = "Join Code",
                Text = "Copied code to clipboard: " .. Code,
            })
        end)

        Settings["Thrix"].AddFunction({"chatlogs", "clogs"}, "Opens chat logs.", function(Args)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Scripts/ChatLogs.lua"))()
        end)
	
        Settings["Thrix"].AddFunction({"remotespy", "rspy"}, "Opens remote spy", function(Args)
            loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))() -- Credits to exxtremestuffs
        end)

        Settings["Thrix"].AddFunction({"dex", "explorer"}, "Opens dex.", function(Args)
            loadstring(game:HttpGet("https://pastebin.com/raw/YREfugjX"))()
        end)

        Settings["Thrix"].AddFunction({"exit", "close"}, "Closes your game.", function(Args)
            game:Shutdown()
        end)
			
	    Settings["Thrix"].AddFunction({"install", "installplugin"}, "Installs the chosen plugin.", function(Args)
            local Success, Error = pcall(function() if Args[2] == "local" then Args[2] = game.PlaceId end game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

            if not Success then
                warn("Plugin not found.")
                return
            else
                local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                
                for i,v in next, Files do
                    writefile("Thrixmin/Plugins/" .. v, game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/" .. v:gsub(" ", "%%20")))
                    print(string.format("Installed %s from plugin: %s", v, Args[2]))

                    local Plugin = loadstring(readfile(File))()

                    for Name, Command in next, Plugin.Commands do
                        Settings["Thrix"].AddFunction({Name, unpack(Command.Aliases or {})}, Command.Description, Command.Function, Plugin.Name)
                    end
                end
            end
        end)
        
        Settings["Thrix"].AddFunction({"uninstall", "uninstallplugin"}, "Uninstalls the chosen plugin.", function(Args)
            local Success, Error = pcall(function() if Args[2] == "local" then Args[2] = game.PlaceId end game:HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

            if not Success then
                warn("Plugin not found.")
                return
            else
                local Files = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                
                for i,v in next, Files do
                    for _,Command in next, loadstring(readfile("Thrixmin/Plugins/" .. v))() do
                        for i,v in next, {Name, unpack(Command.Aliases or {})} do
                            Settings["Thrix"]["Functions"][v] = nil
                        end
                    end

                    delfile("Thrixmin/Plugins/" .. v)
                    print(string.format("Deleted %s from plugin: %s", v, Args[2]))
                end
            end
        end)
        
        local gt = getrawmetatable(game)
        setreadonly(gt, false)
        local old = gt.__namecall
        
        gt.__namecall = newcclosure(function(self, ...)
            if getnamecallmethod() == "FireServer" and tostring(self) == "SayMessageRequest" then
                local Args = (({...})[1]):split(" ")
                if string.sub(Args[1], 1, #Settings["Thrix"]["Settings"]["Prefix"]) == Settings["Thrix"]["Settings"]["Prefix"] then
                    local Command = Settings["Thrix"]["Functions"][string.sub(string.lower(Args[1]), #Settings["Thrix"]["Settings"]["Prefix"] + 1)]

                    if Command then
                        Command:Execute(Args)
                        if Settings["Thrix"]["Settings"]["Silent"] then
                            return self, ""
                        end
                    end
                end
            end
            
            return old(self, ...)
        end)
        
        local CommandAction
        CommandAction = game:GetService("UserInputService").InputBegan:Connect(function(Key, Typing)
            if game:GetService("UserInputService"):GetStringForKeyCode(Key.KeyCode) == Settings["Thrix"]["Settings"]["Prefix"] and not Typing then
                Frame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.7)
            	TextBox:CaptureFocus()
            end
        end)
        
        TextBox.FocusLost:Connect(function()
        	wait()
        	Frame:TweenPosition(UDim2.new(0.5, 0, 1.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5)
        	local Args = TextBox.Text:split(" ")
            if string.sub(Args[1], 1, #Settings["Thrix"]["Settings"]["Prefix"]) == Settings["Thrix"]["Settings"]["Prefix"] then
                table.foreach(Settings["Thrix"]["Functions"], function(Command, v)
                    if string.lower(Args[1]) == string.lower(Settings["Thrix"]["Settings"]["Prefix"] .. Command) then
                        Settings["Thrix"]["Functions"][Command]:Execute(Args)
                        return
                    end
                end)
            end
        	wait()
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
                AutoComplete.Text = string.rep(" ", #Command - #TextBox.Text + 1) .. Settings["Thrix"]["Settings"]["Prefix"] ..  Command
            else
                AutoComplete.Text = ""
            end
        end)
        
        game:GetService("UserInputService").InputBegan:Connect(function(Key)
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
                            TextBox.Text = Settings["Thrix"]["Settings"]["Prefix"] .. Command
                            AutoComplete.Text = ""
                            TextBox.CursorPosition = #TextBox.Text + 1
                        end
                    end
                end
            end
        end)
        
        Settings["Thrix"].AddFunction("silent", "Enables silent chat.", function(Args)
            Settings["Thrix"]["Settings"]["Silent"] = true

            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            print("Enabled silent chat.")
        end)

        Settings["Thrix"].AddFunction("unsilent", "Disables silent chat.", function(Args)
            Settings["Thrix"]["Settings"]["Silent"] = false

            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            print("Disabled silent chat.")
        end)

        Settings["Thrix"].AddFunction("prefix", "Sets your command prefix.", function(Args)
            Settings["Thrix"]["Settings"]["Prefix"] = Args[2]
            
            writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))

            print(string.format("Set command prefix to \"%s\".", Args[2]))
        end)
        
        Settings["Thrix"].AddFunction({"end", "quit"}, "Stops the admin from running.", function(Args)
            gt.__namecall = old
            CommandAction:Disconnect()
            
            getgenv().Thrixmin = false
            print("Quit Thrixtle admin.")
            
            wait(1)
            
            ScreenGui:Destroy()
        end)
        
        Settings["Thrix"].AddFunction("discord", "Invites you to the Thrixmin discord.", function(Args)
            request({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    ['Origin'] = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    ["cmd"] = "INVITE_BROWSER",
                    ["args"] = {
                        ["code"] = "32th2NqaUT"
                    },
                    ["nonce"] = "Thrixmin"
                })
            })
        end)
		
        for _,File in next, listfiles("Thrixmin/Plugins") do
            if isfile(File) then
                local Plugin = loadstring(readfile(File))()

                for Name, Command in next, Plugin.Commands do
                    Settings["Thrix"].AddFunction({Name, unpack(Command.Aliases or {})}, Command.Description, Command.Function, Plugin.Name or Plugin.PluginName)
                end
            end
        end
    end)
    
    if not Source then
        warn(Error)
    end
end

main()
