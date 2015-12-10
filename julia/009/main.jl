# ProjectEuler 009
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    for a = 1:332
        for b = a:div((1000 - a), 2)
            c = 1000 - a - b
            if a * a + b * b == c * c
                println(a * b * c)
                return
            end
        end
    end
end

main()
