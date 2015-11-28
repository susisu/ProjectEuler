/*
 * ProjectEuler 002
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := (
    a := 1
    b := 2
    c := 0
    sum := 0
    while(a < 4000000,
        if(a % 2 == 0, sum = sum + a)
        c = a
        a = b
        b = b + c
    )
    sum println
)
Main do
