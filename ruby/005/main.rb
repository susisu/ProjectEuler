=begin
    ProjectEuler 005
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    p = 1
    for i in 1 .. 20
        p *= i / gcd(p, i)
    end
    puts p
end

def gcd(a, b)
    if a < b then
        return gcd(b, a)
    elsif b == 0 then
        return a
    else
        return gcd(a % b, b)
    end
end

main()
