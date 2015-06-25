--[[
    ProjectEuler 001
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local tot = 0
    for i = 1, 999 do
        if i % 3 == 0 or i % 5 == 0 then
            tot = tot + i
        end
    end
    print(tot)
end

main()
