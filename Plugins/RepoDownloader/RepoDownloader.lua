
local DownloadRepo = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/RepoDownloader/main/main.lua"))()

return {
    {{"downloadrepo", "git", "repo"}, function(Args)
        spawn(function()
            DownloadRepo(Args[2])
        end
    end}
}
