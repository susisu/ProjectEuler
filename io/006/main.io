/*
 * ProjectEuler 006
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    s := 0
    t := 0
    for(n, 1, 100,
        s = s + n * n
        t = t + n
    )
    t = t * t
    (t - s) println
)
Main do
