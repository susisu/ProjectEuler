--[[
    ProjectEuler 002
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local a = 0
    local b = 1
    local tot = 0
    while b < 4000000 do
        if b % 2 == 0 then
            tot = tot + b
        end
        local t = a
        a = b
        b = b + t
    end
    print(tot)
end

main()
