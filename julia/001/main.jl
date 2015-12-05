# ProjectEuler 001
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    sum = 0
    for n = 1:999
        if n % 3 == 0 || n % 5 == 0
            sum += n
        end
    end
    println(sum)
end

main()
