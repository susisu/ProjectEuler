/*
 * ProjectEuler 009
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main do := method(
    for(a, 1, 332,
        for(b, a, (1000 - a) / 2,
            c := 1000 - a - b
            if(a squared + b squared == c squared,
                (a * b * c) println
                return self
            )
        )
    )
)
Main do
