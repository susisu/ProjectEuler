/*
 * ProjectEuler 007
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    counter := 0
    n := 1
    while(counter < 10001,
        n = n + 1
        if(isPrime(n), counter = counter + 1)
    )
    n println
)

Main isPrime := method(n,
    for(d, 2, n sqrt,
        if(n % d == 0, return false)
    )
    return true
)

Main do
