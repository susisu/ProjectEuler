=begin
    ProjectEuler 002
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    sum = 0
    a = 0
    b = 1
    while a <= 4000000 do
        a, b = b, a + b
        if a % 2 == 0 then
            sum += a
        end
    end
    puts sum
end

main()
