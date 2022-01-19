
local Color = Color3.fromRGB(255, 0, 255)
local Connections = {}

local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Highlight/main/main.lua"))()

return {
    {{"esp", "chams"}, "Highlights players.", function(Args)
        spawn(function()
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
                    
                    table.insert(Connections, Connection)
                end
            end
            
            local Connection = game:GetService("Players").PlayerAdded:Connect(function(Player)
                local Connection = Player.CharacterAdded:Connect(function(Character)
                    local Humanoid = Character:WaitForChild("Humanoid")
                    Highlight.HighlightBody(Character, Color)
                end)
                
                table.insert(Connections, Connection)
            end)
            
            table.insert(Connections, Connection)
        end)
    end},
    {{"noesp", "nochams"}, "Unhighlights players.", function(Args)
        spawn(function()
            Highlight.RemoveHighlightGuis()
            
            for i,v in next, Connections do
                v:Disconnect()
            end
            
            Connections = {}
        end)
    end}
}
