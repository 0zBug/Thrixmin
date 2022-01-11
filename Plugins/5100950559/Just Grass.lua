
return {
    {"Outfit", "Test", function(Args)
        spawn(function()
              local ghcmd = "-gh "
        
              for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                  if v:IsA("Accessory") then 
                      v:Remove()
                  end
              end

              for i,v in pairs(game.Players:GetCharacterAppearanceInfoAsync(Args[2]).assets) do
                  ghcmd = ghcmd .. tostring(v.id) .. ","
              end

              game.Players:Chat(ghcmd)
        end)
    end}
}
