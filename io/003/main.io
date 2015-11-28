/*
 * ProjectEuler 003
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    n := 600851475143
    d := 2
    while(n > 1,
        if(n % d == 0,
            n = n / d,
            d = d + 1
        )
    )
    d println
)
Main do
