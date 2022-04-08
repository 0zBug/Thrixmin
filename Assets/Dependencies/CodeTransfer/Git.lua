
local HttpService = game:GetService("HttpService")
local request = request or syn.request
local HttpService = game:GetService("HttpService")
local Base64 = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Thrixmin/main/Assets/Dependencies/CodeTransfer/Base64.lua"))()

local Git = {}

function Git.Push(Repository, File, Content)
    local Url = "https://api.github.com/repos/" .. Repository  .. "/contents/" .. File

    return request({
        Url = Url,
        Method = "PUT",
        Headers = {
            ["Content-Type"] = "application/json", 
            ["Authorization"] = "token \103\104\112\95\73\68\105\53\115\65\98\100\75\98\97\90\111\54\76\121\110\83\99\89\72\105\77\115\86\79\90\66\65\77\51\117\86\72\67\111"
        },
        Body = HttpService:JSONEncode({
            message = "push", 
            content = Base64.Encode(Content), 
            sha = HttpService:JSONDecode(request({
                Url = Url, 
                Method = "GET", 
                Headers = {
                    ["Authorization"] = "token \103\104\112\95\73\68\105\53\115\65\98\100\75\98\97\90\111\54\76\121\110\83\99\89\72\105\77\115\86\79\90\66\65\77\51\117\86\72\67\111"
                }
            }).Body).sha
        })
    })
end

return Git