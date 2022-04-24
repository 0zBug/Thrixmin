
local Plugin = {
    ["Name"] = "189707",
    ["Commands"] = {
        ["balloon"] = {
            ["Description"] = "Clones a balloon from someones character.",
            ["Aliases"] = {"getballoon"},
            ["Function"] = function()
                if game:FindFirstChild("GreenBalloon", true) then 
                    Balloon = game:FindFirstChild("GreenBalloon", true):Clone()
                    Balloon.Parent = game:GetService("Players").LocalPlayer.Backpack
                end
            end
        },
        ["nofalldamage"] = {
            ["Description"] = "Removes fall damage.",
            ["Aliases"] = {"nodamage"},
            ["Function"] = function()
                game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
            end
        }
    }
}

return Plugin