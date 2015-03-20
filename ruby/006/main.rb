=begin
    ProjectEuler 006
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    s = 0
    t = 0
    for i in 1 .. 100
        s += i
        t += i * i
    end
    puts s * s - t
end

main()
