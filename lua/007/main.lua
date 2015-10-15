--[[
    ProjectEuler 007
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local count = 0
    local ps = {}
    local n = 2
    while count < 10001 do
        local isprime = true
        for i, p in ipairs(ps) do
            if n % p == 0 then
                isprime = false
                break
            end
        end
        if isprime then
            table.insert(ps, n)
            count = count + 1
        end
        n = n + 1
    end
    print(ps[count])
end

main()
