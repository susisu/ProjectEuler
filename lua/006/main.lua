--[[
    ProjectEuler 006
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local s = 0
    local t = 0
    for i = 1, 100 do
        s = s + i * i
        t = t + i
    end
    t = t * t
    print(t - s)
end

main()
