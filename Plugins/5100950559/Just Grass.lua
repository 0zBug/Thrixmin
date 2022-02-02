
return {
    {"Outfit", "Removes your hats then adds the selected players hats.", function(Args)
        spawn(function()
              for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                  if v:IsA("Accessory") then 
                      v:Remove()
                  end
              end

              for i,v in pairs(game.Players:GetCharacterAppearanceInfoAsync(Args[2]).assets) do
                  game.Players:Chat(string.format("-gh %s", tostring(v.id)))
              end
        end)
    end}
}
