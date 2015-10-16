--[[
    ProjectEuler 008
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local file = io.open("./digits.txt")
    local digits = file:read("*l")
    local len = string.len(digits)
    local n = 13
    local max = 0
    for i = 1, len - n + 1 do
        local p = 1
        for j = i, i + n - 1 do
            p = p * tonumber(string.sub(digits, j, j))
        end
        if p > max then
            max = p
        end
    end
    print(max)
end

main()
