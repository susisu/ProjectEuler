--[[
    ProjectEuler 010
    Lua / main.lua
    copyright (c) 2015 Susisu

    Lua 5.1.5
    `lua main.lua`
]]

function main()
    local n = 2000000
    local r = math.floor(math.sqrt(n))
    local table = {}
    table[1] = false
    for i = 2, n - 1 do
        table[i] = true
    end
    for i = 2, r do
        if table[i] then
            for j = i * i, n - 1, i do
                table[j] = false
            end
        end
    end
    local sum = 0
    for i = 1, n - 1 do
        if table[i] then
            sum = sum + i
        end
    end
    print(sum)
end

main()
