# ProjectEuler 002
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    sum = 0
    a = 1
    b = 2
    while a < 4000000
        if a % 2 == 0
            sum += a
        end
        c = a
        a = b
        b += c
    end
    println(sum)
end

main()
