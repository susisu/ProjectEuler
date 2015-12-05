# ProjectEuler 003
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    n = 600851475143
    d = 2
    while n > 1
        if n % d == 0
            n /= d
        else
            d += 1
        end
    end
    println(d)
end

main()
