
AddSetting("Cookie", "")

local request = request or syn.request
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local Invisible = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Invisible/main/main.lua"))()

local function GetHeaders()
    local Cookie = Invisible.Decode(GetSetting("Cookie"))

    local Headers = {
        ["Cookie"] = Cookie,
        ["x-csrf-token"] = request({
            Url = "https://auth.roblox.com/v2/logout",
            Method = "POST",
            Headers = {
                ["Cookie"] = Cookie,
                ["content-type"] = "application/json"
            }
        }).Headers["x-csrf-token"],
        ["content-type"] = "application/json"
    }
    
    return Headers
end

local Plugin = {
    ["Name"] = "avatar",
    ["Commands"] = {
        ["auth"] = {
            ["Description"] = "Sets your cookie so you can use the Roblox API.",
            ["Aliases"] = {"cookie"},
            ["Function"] = function(Cookie)
                EditSetting("Cookie", Invisible.Encode(".ROBLOSECURITY=" .. Cookie))
            end
        },
        ["outfit"] = {
            ["Description"] = "Copies a players outfit.",
            ["Aliases"] = {"avatar"},
            ["Function"] = function(Player)
                local Player = GetPlayer(Player).UserId
                local Headers = GetHeaders()

                local Assets = {}
                for _, v in pairs(Players:GetCharacterAppearanceInfoAsync(Player).assets) do
                    table.insert(Assets, v.id)
                end

                request({
                    Url = "https://avatar.roblox.com/v1/avatar/set-wearing-assets", 
                    Method = "POST", 
                    Headers = Headers,
                    Body = HttpService:JSONEncode(Assets)
                })

                local Avatar = HttpService:JSONDecode(request({
                    Url = string.format("https://avatar.roblox.com/v1/users/%s/avatar", Player),
                    Method = "GET",
                    Headers = Headers
                }).Body)

                request({
                    Url = "https://avatar.roblox.com/v1/avatar/set-body-colors/", 
                    Method = "POST", 
                    Headers = Headers,
                    Body = game:GetService("HttpService"):JSONEncode(Avatar.bodyColors)
                })

                request({
                    Url = "https://avatar.roblox.com/v1/avatar/set-scales/",
                    Method = "POST",
                    Headers = Headers,
                    Body = game:GetService("HttpService"):JSONEncode(Avatar.scales)
                })
            end
        },
        ["r15"] = {
            ["Description"] = "Sets your avatar type to R15.",
            ["Function"] = function()
                request({
                    Url = "https://avatar.roblox.com/v1/avatar/set-player-avatar-type", 
                    Method = "POST", 
                    Headers = GetHeaders(),
                    Body = '{"playerAvatarType": "R15"}'
                })
            end
        },
        ["r6"] = {
            ["Description"] = "Sets your avatar type to R6.",
            ["Function"] = function()
                request({
                    Url = "https://avatar.roblox.com/v1/avatar/set-player-avatar-type/",
                    Method = "POST",
                    Headers = GetHeaders(),
                    Body = '{"playerAvatarType": "R6"}'
                })
            end
        }
    }
}

return Plugin
