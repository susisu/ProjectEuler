# ProjectEuler 006
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    s = 0
    t = 0
    for i = 1:100
        s += i * i
        t += i
    end
    t = t * t
    println(t - s)
end

main()
