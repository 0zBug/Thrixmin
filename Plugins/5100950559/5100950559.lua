
local Plugin = {
    ["Name"] = "5100950559",
    ["Commands"] = {
        ["Outfit"] = {
            ["Description"] = "Removes your hats then adds the selected players hats.",
            ["Function"] = function(Args)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("Accessory") then 
                        v:Remove()
                    end
                end

                for i,v in pairs(game.Players:GetCharacterAppearanceInfoAsync(Args[1]).assets) do
                    game.Players:Chat(string.format("-gh %s", tostring(v.id)))
                end
            end
        }
    }
}

return Plugin
