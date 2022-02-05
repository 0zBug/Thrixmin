
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
        ["Version"] = "v1.3.2",
        ["Developer"] = "Bug#3018",
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

local Frame = Instance.new("Frame", ScreenGui)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 1.3, 0)
Frame.Size = UDim2.new(0.6, 0, 0.07, 0)

local UIGradient = Instance.new("UIGradient", Frame)
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(39, 40, 49)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 28, 42))
})

local UICorner = Instance.new("UICorner", Frame)

local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(39, 39, 39)
UIStroke.Transparency = 0.6
UIStroke.Thickness = 1.8

local ImageLabel = Instance.new("ImageLabel", Frame)
ImageLabel.BackgroundTransparency = 1
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.05, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0.09, 0, 1, 0)
ImageLabel.Image = getcustomasset("Thrixmin/Assets/Logo.png")

local TextBox = Instance.new("TextBox", Frame)
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.BackgroundTransparency = 1
TextBox.Font = Enum.Font.Code
TextBox.TextSize = "14"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.PlaceholderText = "Enter Command"
TextBox.ZIndex = 3

local AutoComplete = Instance.new("TextLabel", Frame)
AutoComplete.AnchorPoint = Vector2.new(0.5, 0.5)
AutoComplete.Position = UDim2.new(0.5, 0, 0.5, 0)
AutoComplete.Size = UDim2.new(1, 0, 1, 0)
AutoComplete.BackgroundTransparency = 1
AutoComplete.Font = Enum.Font.Code
AutoComplete.TextSize = "14"
AutoComplete.TextColor3 = Color3.fromRGB(120, 120, 120)
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

local function ASCII(text, font)
    return game:HttpGet("https://artii.herokuapp.com/make?text=" .. text:gsub(" ", "+") .. "&font=" .. font)
end

local function GetPlayer(Name)
    if string.lower(Name) == "random" then
        return game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    elseif string.lower(Name) == "closest" then
        local Closest
        local Distance = math.huge
        local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        
        for _, Player in ipairs(game.Players:GetPlayers()) do
        	if Player ~= game.Players.LocalPlayer then
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
        local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        
        for _, Player in ipairs(game.Players:GetPlayers()) do
        	if Player ~= game.Players.LocalPlayer then
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

local function HttpGet(Url)
    return request({Url = Url, Method = "GET"}).Body
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
                self.Arguments = {
                    args
                }
                pcall(FuncExec, args)
            end
        end
        
        local PluginName = PluginName or "main"
        local CommandDocs = string.format("imported %s from %s - %s ", FuncNames[1], PluginName, FuncDesc)
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
            thread(function()
                LocalPlayer.Character.HumanoidRootPart.CFrame = GetPlayer(Args[2]).Character.HumanoidRootPart.CFrame
            end)
        end)
        
        Settings["Thrix"].AddFunction({"ruinreplication", "breaknet"}, "Breaks the selected players net.", function(Args)
            thread(function()
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
            thread(function()
                game:GetService("TeleportService"):Teleport(Args[2], game.Players.LocalPlayer)
            end)
        end)
        
        Settings["Thrix"].AddFunction({"walkspeed", "ws"}, "Sets your character's walkspeed to the chosen amount.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.WalkSpeed = Args[2] or 16
                print(string.format("Set Walk Speed to %s.", Args[2] or 16))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"jumppower", "jp"}, "Sets your character's jumppower to the chosen amount.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.JumpPower = Args[2] or 50
                print(string.format("Set Jump Power to %s.", Args[2] or 50))
            end)
        end)

        Settings["Thrix"].AddFunction({"hipheight", "height"}, "Sets your hip height to the chosen amount.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.HipHeight = Args[2] or 2
                print(string.format("Set Hip Height to %s.", Args[2] or 2))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"gravity", "grav"}, "Sets the workspace's gravity to the chosen amount.", function(Args)
            thread(function()
                game.Workspace.Gravity = Args[2] or 196.2
                print(string.format("Set Gravity to %s.", Args[2] or 196.2))
            end)
        end)

        Settings["Thrix"].AddFunction({"timeofday", "time"}, "Sets the time to the selected time.", function(Args)
            thread(function()
                game.Lighting.ClockTime = Args[2] or 14
                print(string.format("Set Clock Time to %s.", Args[2] or 14))
            end)
        end)

        Settings["Thrix"].AddFunction("sit", "Makes your player sit down.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.Sit = true
            end)
        end)

        Settings["Thrix"].AddFunction("unsit", "Makes your player stand up.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.Sit = false
            end)
        end)

        Settings["Thrix"].AddFunction({"platformstand", "stun"}, "Stuns your player.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.PlatformStand = true
            end)
        end)

        Settings["Thrix"].AddFunction({"unplatformstand", "unstun"}, "Unstuns your player.", function(Args)
            thread(function()
                LocalPlayer.Character.Humanoid.PlatformStand = false
            end)
        end)

        Settings["Thrix"].AddFunction({"freeze", "fr"}, "Freezes your player in place.", function(Args)
            thread(function()
                LocalPlayer.Character.HumanoidRootPart.Anchored = true
            end)
        end)

        Settings["Thrix"].AddFunction({"unfreeze", "unfr"}, "Unfreezes your player in place.", function(Args)
            thread(function()
                LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end)
        end)
        
        local Noclip
        local Clip = true
        Settings["Thrix"].AddFunction("noclip", "Noclips your character.", function(Args)
            thread(function()
                Clip = false
                Noclip = game:GetService("RunService").RenderStepped:Connect(function()
                    if Clip == false and game:GetService("Players").LocalPlayer.Character then
                        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        	if v:IsA("BasePart") and v.CanCollide == true then
                        		v.CanCollide = false
                        	end
                        end
                    end
                end)
            end)
        end)

        Settings["Thrix"].AddFunction("clip", "Clips your character.", function(Args)
            thread(function()
                if Noclip then
                    Noclip:Disconnect()
                end
                Clip = true
            end)
        end)
        
        Settings["Thrix"].AddFunction({"serverhop", "sh"}, "Teleports you to a different server.", function(Args)
            thread(function()
                for i, v in pairs(game.HttpService:JSONDecode(HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                    if v.playing < v.maxPlayers then
                        print(string.format("Teleporting to https://roblox.com/discover#/rg-join/%s/%s/, Players: %s, MaxPlayers: %s, Ping: %s, Fps: %s", game.PlaceId, v.id, v.playing, v.maxPlayers, v.ping, v.fps))
                        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
                    end
                end

                print("No servers found.")
            end)
        end)

        Settings["Thrix"].AddFunction({"sync", "syncanim"}, "Synchronizes your current animation with another players.", function(Args)
            thread(function()
                for _,v in next, GetPlayer(Args[2]).Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    for _,v2 in next, LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                        v2.TimePosition = v.TimePosition
                    end
                end
            end)
        end)

        Settings["Thrix"].AddFunction({"view", "spectate"}, "Spectates the chosen player.", function(Args)
            thread(function()
                game.Workspace.Camera.CameraSubject = GetPlayer(Args[2]).Character.Humanoid
                print(string.format("Spectating %s.", GetPlayer(Args[2]).Name))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"unview", "unspectate"}, "Makes your camera go back to your player.", function(Args)
            thread(function()
                game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            end)
        end)
        
        local Flying = false
        Settings["Thrix"].AddFunction({"fly", "vfly", "vehiclefly"}, "Makes your player fly.", function(Args)
            thread(function()
                if Flying then Flying = false end
                local Speed = tonumber(Args[2]) or 1
                if KeyDown or KeyUp then 
            	    KeyDown:Disconnect() 
            	    KeyUp:Disconnect() 
                end
        	
        	    if string.lower(Args[1]) == "-fly" then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                end
            
            	local Controls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            	local lControls = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                local sSpeed = 0
                
            	KeyDown = game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
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
            	
            	KeyUp = game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(Key)
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
                BodyGyro.Parent = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                BodyVelocity.Parent = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                BodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
                BodyGyro.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
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
        end)
        
        Settings["Thrix"].AddFunction({"unfly", "unvfly", "unvehiclefly"}, "Makes your player stop flying.", function(Args)
            thread(function()
                Flying = false
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
            
                if KeyDown or KeyUp then 
                	KeyDown:Disconnect() 
                    KeyUp:Disconnect() 
            	end
                
                pcall(function() 
                	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom 
                end)
            end)
        end)
        
        if Settings["Thrix"]["Settings"]["Waypoints"] == nil then
            thread(function()
                Settings["Thrix"]["Settings"]["Waypoints"] = {}
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end
        
        Settings["Thrix"].AddFunction({"setwaypoint", "setwp"}, "Creates a waypoint at your current location.", function(Args)
            thread(function()
                Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] = tostring(LocalPlayer.Character.HumanoidRootPart.CFrame)
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end)
        
        Settings["Thrix"].AddFunction({"deletewaypoint", "delwp"}, "Deletes the selected waypoint.", function(Args)
            thread(function()
                if Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] then
                    Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] = nil
                else
                    warn("Invalid Waypoint.")
                end
                
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))
            end)
        end)

        Settings["Thrix"].AddFunction({"waypoint", "wp"}, "Teleports you to the selected waypoint.", function(Args)
            thread(function()
                if Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] then
                    loadstring("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. Settings["Thrix"]["Settings"]["Waypoints"][Args[2]] .. ")")()
                else
                    warn("Invalid Waypoint.")
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"firecd", "fireclickdetectors"}, "Fires all clickdetectors in the workspace.", function(Args)
            thread(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("ClickDetector") then
            			fireclickdetector(v)
            		end
                end
    	    end)
        end)
        
        Settings["Thrix"].AddFunction({"firetouch", "firetouchinterests"}, "Fires all touchinterests in the workspace.", function(Args)
            thread(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("TouchTransmitter") then
            			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
            		end
                end
        	end)
        end)
        
        Settings["Thrix"].AddFunction({"fireprox", "fireproximityprompts"}, "Fires all proximityprompts in the workspace.", function(Args)
            thread(function()
                for _,v in pairs(workspace:GetDescendants()) do
            		if v:IsA("ProximityPrompt") then
            			fireproximityprompt(v)
            		end
                end
    	    end)
        end)
        
        Settings["Thrix"].AddFunction({"reset", "re"}, "Resets your player.", function(Args)
            thread(function()
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
            thread(function()
                queue_on_teleport("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer loadstring(game:HttpGet(\"https://raw.githubusercontent.com/0zBug/Thrixmin/main/main.lua\"))()")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end)
        end)
        
        Settings["Thrix"].AddFunction("posrj", "Makes your player rejoin and teleport to your current position.", function(Args)
            thread(function()
                queue_on_teleport("repeat wait() until game:IsLoaded() repeat wait() until game:GetService('Players').LocalPlayer repeat wait() until game:GetService('Players').LocalPlayer.Character repeat wait() until game:GetService('Players').LocalPlayer.Character.HumanoidRootPart wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) .. ") loadstring(game:HttpGet(\"https://raw.githubusercontent.com/0zBug/Thrixmin/main/main.lua\"))()")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end)
        end)
        
        Settings["Thrix"].AddFunction("report", "Reports the chosen player the chosen amount of times.", function(Args)
            thread(function()
                local Player = GetPlayer(Args[2])
                local Amount = Args[3]
                
                local Sources = {
                    {"Swearing", HttpGet("https://pastebin.com/raw/RvHUZ1mB"):split("\n")},
                    {"Inappropriate Username", HttpGet("https://pastebin.com/raw/Yvig7WyT"):split("\n")},
                    {"Bullying", HttpGet("https://pastebin.com/raw/4FbW7D6A"):split("\n")},
                    {"Scamming", HttpGet("https://pastebin.com/raw/S9xvqgg0"):split("\n")},
                    {"Dating", HttpGet("https://pastebin.com/raw/eyXihwT6"):split("\n")},
                    {"Cheating/Exploiting", HttpGet("https://pastebin.com/raw/MrPGTkuU"):split("\n")},
                    {"Personal Question", HttpGet("https://pastebin.com/raw/Kht6Z4h1"):split("\n")},
                    {"Offsite Links", HttpGet("https://pastebin.com/raw/S9xvqgg0"):split("\n")},
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
            thread(function()
                if isfile(Args[2]) then
		            loadstring(readfile(Args[2]))()
                else
                    print("404: File not found.")
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"delete", "del", "delfile"}, "Deletes the chosen file.", function(Args)
            thread(function()
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
        end)
	
        Settings["Thrix"].AddFunction({"exit", "close"}, "Closes your game.", function(Args)
            thread(function()
                game:Shutdown()
            end)
        end)
			
	    Settings["Thrix"].AddFunction({"install", "installplugin"}, "Installs the chosen plugin.", function(Args)
            thread(function()
                local Success, Error = pcall(function() if Args[2] == "local" then Args[2] = game.PlaceId end HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

                if not Success then
                    warn("Plugin not found.")
                    return
                else
                    local Files = loadstring(HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                    
                    for i,v in next, Files do
                        writefile("Thrixmin/Plugins/" .. v, HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/" .. v:gsub(" ", "%%20")))
                        print(string.format("Installed %s from plugin: %s", v, Args[2]))
                        for _,Command in next, loadstring(readfile("Thrixmin/Plugins/" .. v))() do
                            if type(Command[1]) == "string" then
                                Command[1] = {Command[1]}
                            end
                            Settings["Thrix"].AddFunction(Command[1], Command[2], function(Args)
                                thread(function()
                                    Command[3](Args)
                                end)
                            end, Args[2])
                        end
                    end
                end
            end)
        end)
        
        Settings["Thrix"].AddFunction({"uninstall", "uninstallplugin"}, "Uninstalls the chosen plugin.", function(Args)
            thread(function()
                local Success, Error = pcall(function() if Args[2] == "local" then Args[2] = game.PlaceId end HttpGet("https://github.com/0zBug/Thrixmin/tree/main/Plugins/" .. Args[2]) end)

                if not Success then
                    warn("Plugin not found.")
                    return
                else
                    local Files = loadstring(HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Plugins/" .. Args[2] .. "/install.lua"))()
                    
                    for i,v in next, Files do
                        for _,Command in next, loadstring(readfile("Thrixmin/Plugins/" .. v))() do
                            if type(Command[1]) == "string" then
                                Command[1] = {Command[1]}
                            end
                            for i,v in next, Command[1] do
                                Settings["Thrix"]["Functions"][v] = nil
                            end
                        end
                        delfile("Thrixmin/Plugins/" .. v)
                        print(string.format("Deleted %s from plugin: %s", v, Args[2]))
                    end
                end
            end)
        end)

        local gt = getrawmetatable(game)
        setreadonly(gt, false)
        local old = gt.__namecall
        
        gt.__namecall = function(t, ...)
            if getnamecallmethod() == "FireServer" and tostring(t) == "SayMessageRequest" then
                local Args = (({...})[1]):split(" ")
                if string.sub(Args[1], 1, #Settings["Thrix"]["Settings"]["Prefix"]) == Settings["Thrix"]["Settings"]["Prefix"] then
                    return table.foreach(Settings["Thrix"]["Functions"], function(Command, v)
                        if string.lower(Args[1]) == string.lower(Settings["Thrix"]["Settings"]["Prefix"] .. Command) then
                            Settings["Thrix"]["Functions"][Command]:Execute(Args)
                            return
                    	end
                    end)
                end
            end
            
            return old(t, ...)
        end
        
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
        
        Settings["Thrix"].AddFunction("prefix", "Sets your command prefix.", function(Args)
            thread(function()
                Settings["Thrix"]["Settings"]["Prefix"] = Args[2]
                
                writefile("Thrixmin/Settings.json", game:GetService("HttpService"):JSONEncode(Settings["Thrix"]["Settings"]))

                print(string.format("Set command prefix to \"%s\".", Args[2]))
            end)
        end)

        Settings["Thrix"].AddFunction({"discord"}, "Stops the admin from running.", function(Args)
            thread(function()
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
                    }),
                })
            end)
        end)
        
        Settings["Thrix"].AddFunction({"end", "quit"}, "Stops the admin from running.", function(Args)
            thread(function()
                gt.__namecall = old
                CommandAction:Disconnect()
                
                getgenv().Thrixmin = false
                print("Quit Thrixtle admin.")
                
                wait(1)
                
                ScreenGui:Destroy()
            end)
        end)
			
        for _,File in next, listfiles("Thrixmin/Plugins") do
            if isfile(File) then
                for _,Command in next, loadstring(readfile(File))() do
                    if type(Command[1]) == "string" then
                        Command[1] = {Command[1]}
                    end
                    Settings["Thrix"].AddFunction(Command[1], Command[2], function(Args)
                        thread(function()
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
