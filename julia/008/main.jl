# ProjectEuler 008
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    stream = open("./digits.txt", "r")
    digits = ""
    n = 1000
    try
        digits = readline(stream)
    catch err
        warn("couldn't open file")
        return
    finally
        close(stream)
    end

    if length(digits) < n
        warn("insufficient input")
        return
    end

    max = 0
    for i = 1:(n - 12)
        p = 1
        for j = i:(i + 12)
            p *= Int(digits[j]) - Int('0')
        end
        if p > max
            max = p
        end
    end
    println(max)
end

main()
