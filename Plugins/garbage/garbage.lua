
local Garbage = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Garbage/main/timy.lua"))()

local Plugin = {
    ["Name"] = "garbage",
    ["Commands"] = {
        ["dump"] = {
            ["Description"] = "Finds and outputs tables in the collection.",
            ["Aliases"] = {"search"},
            ["Function"] = function(Query)
                Garbage.dump(Query)
            end
        },
        ["setupvalue"] = {
            ["Description"] = "Edits the value of an value in the collection.",
            ["Aliases"] = {"set"},
            ["Function"] = function(Query, Index, Value, Changed)
                Garbage.setupvalue(Query, Index, tonumber(Value) and tonumber(Value) or Value, Changed == "true" and true or false)
            end
        }
    }
}

return Plugin
