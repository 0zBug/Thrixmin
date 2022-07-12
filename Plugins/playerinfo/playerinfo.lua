
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Event = ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local FurryDescriptors = {"furry", "fur", "tail", "wolf", "ears", "floof", "fox", "protogen", "shark", "dragon", "critter"}

local Plugin = {
    ["Name"] = "playerinfo",
    ["Commands"] = {
        ["height"] = {
            ["Description"] = "Get the player's height.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                for _, Player in pairs(Player) do
                    local Description = Players:GetHumanoidDescriptionFromUserId(Player.UserId)

                    if Description.HeightScale >= 1.01 then
                        Event:FireServer(string.format("%s is tall.", Player.Name), "All")
                    elseif Description.HeightScale >= 0.9 then
                        Event:FireServer(string.format("%s's height is average.", Player.Name), "All")
                    else
                        Event:FireServer(string.format("%s is short.", Player.Name), "All")
                    end
                end
            end
        },
        ["weight"] = {
            ["Description"] = "Get the player's weight.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                for _, Player in pairs(Player) do
                    local Description = Players:GetHumanoidDescriptionFromUserId(Player.UserId)

                    if Description.DepthScale >= 0.95 then
                        Event:FireServer(string.format("%s is fat.", Player.Name), "All")
                    elseif Description.DepthScale <= 0.75 then
                        Event:FireServer(string.format("%s is skinny.", Player.Name), "All")
                    else
                        Event:FireServer(string.format("%s's weight is average.", Player.Name), "All")
                    end
                end
            end
        },
        ["race"] = {
            ["Description"] = "Get the player's race.",
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                for _, Player in pairs(Player) do
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
                        Event:FireServer(string.format("%s is %s.", Player.Name, BrickColor.new(Description.HeadColor.R, Description.HeadColor.G, Description.HeadColor.B).Name), "All")
                    end
                end
            end
        },
        ["furry"] = {
            ["Description"] = "Get the player's furryness.",
            ["Aliases"] = {"furrymeter"},
            ["Function"] = function(Player)
                local Player = GetPlayer(Player)

                for _, Player in pairs(Player) do
                    if Player.Character then
                        local Total = 0
                        local Furry = 0

                        for _, Accessory in pairs(Player.Character:GetChildren()) do
                            if Accessory:IsA("Accessory") then
                                Total = Total + 0.5

                                local match = false
                                for _, v in pairs(FurryDescriptors) do
                                    if string.find(string.lower(Accessory.Name), v) then
                                        match = true
                                    end
                                end

                                if match then
                                    Furry = Furry + 1
                                end
                            end
                        end

                        Event:FireServer(string.format("%s is %s%% furry.", Player.Name, math.max(math.floor(Furry / Total * 100)), 100), "All")
                    end
                end
            end
        }
    }
}

return Plugin
