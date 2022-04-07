
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
            ["Authorization"] = "token \52\98\55\52\57\102\97\101\101\56\49\50\101\56\56\48\49\54\101\101\97\54\101\53\102\99\49\57\51\55\52\101\102\52\55\102\50\56\57\48"
        },
        Body = HttpService:JSONEncode({
            message = "push", 
            content = Base64.Encode(Content), 
            sha = HttpService:JSONDecode(request({
                Url = Url, 
                Method = "GET", 
                Headers = {
                    ["Authorization"] = "token \52\98\55\52\57\102\97\101\101\56\49\50\101\56\56\48\49\54\101\101\97\54\101\53\102\99\49\57\51\55\52\101\102\52\55\102\50\56\57\48"
                }
            }).Body).sha
        })
    })
end

return Git