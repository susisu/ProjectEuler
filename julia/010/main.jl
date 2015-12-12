# ProjectEuler 010
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    n = 2000000
    table = trues(n - 1)
    table[1] = false
    r = Int(floor(sqrt(n)))
    for i = 2:r
        if table[i]
            for j = (i * i):i:(n - 1)
                table[j] = false
            end
        end
    end

    sum = 0
    for i = 1:(n - 1)
        if table[i]
            sum += i
        end
    end
    println(sum)
end

main()
