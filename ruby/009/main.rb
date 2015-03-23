=begin
    ProjectEuler 009
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    a = 1
    while a <= 332
        b = a + 1
        while b < 1000 - a - b
            if 2 * a * b - 2000 * (a + b) + 1000000 == 0 then
                puts a * b * (1000 - a - b)
                return
            end
            b += 1
        end
        a += 1
    end
end

main()
