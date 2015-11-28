/*
 * ProjectEuler 001
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    sum := 0
    for(i, 1, 999,
        (i % 3 == 0 or i % 5 == 0) ifTrue(
            sum = sum + i
        )
    )
    sum println
)
Main do
