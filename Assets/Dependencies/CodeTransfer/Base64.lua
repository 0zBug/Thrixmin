
local Alphabet = {}
local Indexes = {}

for i = 1, 64 do
    local c = i < 27 and (i + 64) or i < 53 and (i + 70)  or i < 63 and (i - 5) or math.floor(((i - 62) * 3.5) + 40)
    Alphabet[i] = c
    Indexes[c] = i
end

local Base64 = {}

function Base64.Encode(Decoded)
    local Encoded = {}

    for i = 1, #Decoded, 3 do
        local C1, C2, C3 = string.byte(Decoded, i, i + 2)

        table.insert(Encoded, Alphabet[bit32.rshift(C1, 2) + 1])
        table.insert(Encoded, Alphabet[bit32.lshift(bit32.band(C1, 3), 4) + bit32.rshift(C2 or 0, 4) + 1])
        table.insert(Encoded, C2 and Alphabet[bit32.lshift(bit32.band(C2 or 0, 15), 2) + bit32.rshift(C3 or 0, 6) + 1] or 61)
        table.insert(Encoded, C3 and Alphabet[bit32.band(C3 or 0, 63) + 1] or 61)
    end

    return string.char(unpack(Encoded))
end

function Base64.Decode(Encoded)
    local Decoded = {}

    for i = 1, #Encoded, 4 do
        local C1, C2, C3, C4 = string.byte(Encoded, i, i + 3)

        table.insert(Decoded, bit32.lshift(Indexes[C1] - 1, 2) + bit32.rshift(Indexes[C2] - 1, 4))
        table.insert(Decoded, C3 ~= 61 and (bit32.lshift(bit32.band(Indexes[C2] - 1, 15), 4) + bit32.rshift((Indexes[C3] or 1) - 1, 2)) or nil)
        table.insert(Decoded, C4 ~= 61 and (bit32.lshift(bit32.band((Indexes[C3] or 1) - 1, 3), 6) + (Indexes[C4] or 1) - 1) or nil)
    end

    return string.char(unpack(Decoded))
end

return Base64
