--[[
    ProjectEuler 003
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local n = 600851475143
    local i = 2
    while n > 1 do
        if n % i == 0 then
            n = n / i
        else
            i = i + 1
        end
    end
    print(i)
end

main()
