# ProjectEuler 004
# Julia / main.jl
# copyright (c) 2015 Susisu
#
# Julia v0.4.1
# `julia main.jl`

function main()
    max = 0
    for a = 100:999
        for b = a:999
            p = a * b
            s = @sprintf("%d", p)
            if isPalindrome(s) && p > max
                max = p
            end
        end
    end
    println(max)
end

function isPalindrome(s)
    l = length(s)
    for i = 1:div(l, 2)
        if s[i] != s[l + 1 - i]
            return false
        end
    end
    return true
end

main()
