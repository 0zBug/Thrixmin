
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Event = ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local Plugin = {
    ["Name"] = "playerinfo",
    ["Commands"] = {
        ["height"] = {
            ["Description"] = "Get the player's height.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)
                local Description = Players:GetHumanoidDescriptionFromUserId(Player.UserId)

                if Description.HeightScale >= 1.01 then
                    Event:FireServer(string.format("%s is tall.", Player.Name), "All")
                elseif Description.HeightScale >= 0.9 then
                    Event:FireServer(string.format("%s is short.", Player.Name), "All")
                else
                    Event:FireServer(string.format("%s's height is average.", Player.Name), "All")
                end
            end
        },
        ["weight"] = {
            ["Description"] = "Get the player's weight.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)
                local Description = Players:GetHumanoidDescriptionFromUserId(Player.UserId)

                if Description.DepthScale >= 0.95 then
                    Event:FireServer(string.format("%s is fat.", Player.Name), "All")
                elseif Description.DepthScale <= 0.75 then
                    Event:FireServer(string.format("%s is skinny.", Player.Name), "All")
                else
                    Event:FireServer(string.format("%s's weight is average.", Player.Name), "All")
                end
            end
        },
        ["race"] = {
            ["Description"] = "Get the player's race.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)
                local Description = Players:GetHumanoidDescriptionFromUserId(Player.UserId)

                local SkinColor = math.floor(Description.HeadColor.R * 255 + Description.HeadColor.G * 255 + Description.HeadColor.B * 255)

                if SkinColor == 564 then
                    Event:FireServer(string.format("%s is white.", Player.Name), "All")
                elseif AddedColor == 436 or SkinColor == 491 then
                    Event:FireServer(string.format("%s is asian.", Player.Name), "All")
                elseif SkinColor == 566 or SkinColor == 451 or SkinColor == 454 then
                    Event:FireServer(string.format("%s is mixed.", Player.Name), "All")
                elseif SkinColor == 209 or SkinColor == 206 or SkinColor == 286 or SkinColor == 232 then
                    Event:FireServer(string.format("%s is black.", Player.Name), "All")
                else
                    Event:FireServer(string.format("%s is %s.", Player.Name, BrickColor.new(Description.HeadColor.R * 255, Description.HeadColor.G * 255, Description.HeadColor.B * 255).Name), "All")
                end
            end
        }
    }
}

return Plugin
