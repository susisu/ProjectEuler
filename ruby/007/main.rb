=begin
    ProjectEuler 007
    Ruby / main.rb
    copyright (c) 2015 Susisu

    Ruby 2.0.0p481
    `ruby main.rb`
=end

def main
    counter = 0
    n = 2
    while true do
        if prime? n then
            counter += 1
            if counter == 10001 then
                puts n
                break
            end
        end
        n += 1
    end
end

def prime?(n)
    if n < 2 then
        return false
    else
        r = Math.sqrt(n)
        i = 2
        while i <= r do
            if n % i == 0 then
                return false
            end
            i += 1
        end
        return true
    end
end

main()
