
local Garbage = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Garbage/main/main.lua"))()

local Plugin = {
    ["Name"] = "garbage",
    ["Commands"] = {
        ["dump"] = {
            ["Description"] = "Finds and outputs tables in the collection.",
            ["Aliases"] = {"search", "query"},
            ["Function"] = function(Query)
                Garbage.dump(Query)
            end
        },
        ["setupvalue"] = {
            ["Description"] = "Edits the value of an value in the collection.",
            ["Aliases"] = {"search", "query"},
            ["Function"] = function(Query, Index, Value, Changed)
                Garbage.setupvalue(Query, Index, tonumber(Value) and tonumber(Value) or Value, Changed == "true" and true or false)
            end
        }
    }
}

return Plugin
