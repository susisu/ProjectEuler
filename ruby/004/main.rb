=begin
    ProjectEuler 004
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    max = 0
    for i in 100 .. 999
        for j in i .. 999
            p = i * j
            if (palindrome? p) && p > max then
                max = p
            end
        end
    end
    puts max
end

def palindrome?(n)
    s = n.to_s
    return s == s.reverse
end

main()
