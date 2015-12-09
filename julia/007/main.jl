# ProjectEuler 007
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    count = 0
    n = 1
    while count < 10001
        n += 1
        if isprime(n)
            count += 1
        end
    end
    println(n)
end

main()
