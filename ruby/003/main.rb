=begin
    ProjectEuler 003
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    n = 600851475143
    p = 2
    while n > 1 do
        if n % p == 0 then
            n /= p
        else
            p += 1
        end
    end
    puts p
end

main()
