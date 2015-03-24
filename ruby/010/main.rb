=begin
    ProjectEuler 010
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    n = 2000000
    table = Array.new(n, true)
    table[0] = false;
    table[1] = false;

    r = Math.sqrt(n).floor
    for i in 2 .. r
        if table[i]
            for j in (i * i ... n).step(i)
                table[j] = false
            end
        end
    end

    total = 0
    for i in 0 ... n
        if table[i]
            total += i
        end
    end
    puts total
end

main()
