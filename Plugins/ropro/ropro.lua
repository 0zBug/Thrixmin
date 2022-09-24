
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

local Plugin = {
    ["Name"] = "print",
    ["Commands"] = {
        ["discord"] = {
            ["Description"] = "Gets the players discord via ropro.",
            ["Aliases"] = {"dis"},
            ["Function"] = function(Player)
                local Players = GetPlayer(Player)
            
                for _, Player in next, Players do
                    local Discord = HttpService:JSONDecode(syn.request({
                        Url =  "https://api.ropro.io/getUserInfoTest.php?myid=0&userid=" .. Player.UserId
                    }).Body).discord
            
                    local Discord = string.gsub(Discord, "%d", "%1⁥")
                    
                    print(Discord)
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Discord, "All")
                end
            end
        },
        ["reputation"] = {
            ["Description"] = "Gets the players discord via ropro.",
            ["Aliases"] = {"rep"},
            ["Function"] = function(Player)
                local Players = GetPlayer(Player)

                for _, Player in next, Players do
                    local Reputation = HttpService:JSONDecode(syn.request({
                        Url =  "https://api.ropro.io/getUserInfoTest.php?myid=0&userid=" .. Player.UserId
                    }).Body).reputation

                    local Sentence = string.format("%s has %s ropro reputation.", Player.Name, Reputation)
                    local Sentence = string.gsub(Sentence, "%d", "%1⁥")
                    
                    print(Sentence)
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Sentence, "All")
                end
            end
        }
    }
}

return Plugin
