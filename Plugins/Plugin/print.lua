
local Plugin = {
    ["Name"] = "print",
    ["Commands"] = {
        ["print"] = {
            ["Description"] = "Prints the args into the console.",
            ["Aliases"] = {"output"},
            ["Function"] = function(...)
                print(...)
            end
        }
    }
}

return Plugin
