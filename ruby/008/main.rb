=begin
    ProjectEuler 008
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    n = 13
    open("./digits.txt") {|file|
        digits = file.gets
        max = 0
        for i in 0 .. 1000 - n
            p = 1
            for j in 0 .. n - 1
                p *= digits[i + j].to_i
            end
            if p > max then
                max = p
            end
        end
        puts max
    }
end

main()
