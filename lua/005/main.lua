--[[
    ProjectEuler 005
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local p = 1
    for i = 1, 20 do
        p = p / gcd(p, i) * i
    end
    print(p)
end

function gcd(a, b)
    if a < b then
        return gcd(b, a)
    elseif a % b == 0 then
        return b
    else
        return gcd(b, a % b)
    end
end

main()
