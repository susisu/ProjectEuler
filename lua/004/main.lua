--[[
    ProjectEuler 004
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local max = 0
    for a = 100, 999 do
        for b = 100, 999 do
            local c = a * b
            if ispalindrome(tostring(c)) and c > max then
                max = c
            end
        end
    end
    print(max)
end

function ispalindrome(str)
    return str == string.reverse(str)
end

main()
