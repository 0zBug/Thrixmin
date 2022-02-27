
local Documentation = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Misc/main/DocDump.lua"))()

return {
    {"define", "Defines a function or property in the roblox api", function(Args)
        local Define = string.lower(Args[2])
      
        if Documentation[Define] then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Documentation[Define], "All")
        else
            print("Invalid function or property.")
        end
    end}
}
