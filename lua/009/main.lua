--[[
    ProjectEuler 009
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    for a = 1, 332 do
        for b = a + 1, (1000 - a) / 2 do
            local c = 1000 - a - b
            if a * a + b * b == c * c then
                print(a * b * c)
                return
            end
        end
    end
end

main()

