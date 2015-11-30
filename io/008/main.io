/*
 * ProjectEuler 008
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    file := File clone openForReading("./digits.txt")
    digits := file readLine
    file close

    max := 0
    p := 1
    for(i, 0, digits size - 13,
        p = 1
        for(j, i, i + 12,
            p = p * (digits at(j) - 48)
        )
        if(p > max, max = p)
    )
    max asString(0,0) println
)
Main do
