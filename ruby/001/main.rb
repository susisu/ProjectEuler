=begin
    ProjectEuler 001
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    sum = 0
    (1..999).each{|n|
        if n % 3 == 0 || n % 5 == 0 then
            sum += n
        end
    }
    puts sum
end

main()
