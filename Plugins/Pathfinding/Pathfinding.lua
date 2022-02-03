
local function GetPlayer(Name)
    if string.lower(Name) == "random" then
        return game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    else
        for i,v in next, game:GetService("Players"):GetChildren() do
            if v:IsA("Player") and string.lower(string.sub((v.Name), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) or string.lower(string.sub((v.DisplayName), 1, #Name)) == string.sub((string.lower(Name)), 1, #Name) then
                return v
            end
        end
    end
    
    return false
end

return {
    {{"pathfind", "walkto"}, "Walks to the selected player using pathfinding.", function(Args)
        local Player = GetPlayer(Args[2])
        local To = Player.Character.HumanoidRootPart.Position
        local From =  game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        
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
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position)
            game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
        end
    end},
}
