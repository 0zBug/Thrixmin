
return {
    {{"Balloon", "GetBalloon"}, "Clones a balloon from someones character.", function(Args)
        spawn(function() 
            if game:FindFirstChild("GreenBalloon", true) then 
            	Balloon = game:FindFirstChild("GreenBalloon", true):Clone()
            	Balloon.Parent = game:GetService("Players").LocalPlayer.Backpack
            end
        end)
    end}
}
