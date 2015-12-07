# ProjectEuler 005
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    p = 1
    for i = 1:20
        p = div(p * i, gcd(p, i))
    end
    println(p)
end

main()
