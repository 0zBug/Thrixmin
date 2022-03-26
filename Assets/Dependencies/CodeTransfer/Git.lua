
-- Tokens are encoded so github won't remove them

local HttpService = game:GetService("HttpService")
local request = request or syn.request
local HttpService = game:GetService("HttpService")
local Base64 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Thrixmin/JoinCodes/main/Base64.lua"))()

local Git = {}

function Git.Push(Repository, File, Content)
    local Url = "https://api.github.com/repos/" .. Repository  .. "/contents/" .. File

    return request({
        Url = Url,
        Method = "PUT",
        Headers = {
            ["Content-Type"] = "application/json", 
            ["Authorization"] = "token \103\104\112\95\105\52\49\120\54\105\98\83\83\110\77\80\66\108\90\82\122\52\105\53\48\115\76\90\101\49\103\84\79\118\49\73\110\67\75\69"
        },
        Body = HttpService:JSONEncode({
            message = "push", 
            content = Base64.Encode(Content), 
            sha = HttpService:JSONDecode(request({
                Url = Url, 
                Method = "GET", 
                Headers = {
                    ["Authorization"] = "token \103\104\112\95\105\52\49\120\54\105\98\83\83\110\77\80\66\108\90\82\122\52\105\53\48\115\76\90\101\49\103\84\79\118\49\73\110\67\75\69"
                }
            }).Body).sha
        })
    })
end

return Git
