
local Documentation = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Misc/main/Data/Dumps/DocDump.lua"))()

local Plugin = {
    ["Name"] = "define",
    ["Commands"] = {
        ["define"] = {
            ["Description"] = "Defines a function or property in the roblox api",
            ["Function"] = function(Class)
                local Define = string.lower(Class)
              
                if Documentation[Define] then
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Documentation[Define], "All")
                else
                    print("Invalid function or property.")
                end
            end
        }
    }
}

return Plugin
