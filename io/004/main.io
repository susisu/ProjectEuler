/*
 * ProjectEuler 004
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Sequence isPalindrome := method(
    len := self size
    for(i, 0, len / 2,
        if(self at(i) != self at(len - 1 - i), return false)
    )
    return true
)

Main := Object clone
Main do := method(
    max := 0
    for(a, 100, 999,
        for(b, a, 999,
            c := a * b
            if(c asString isPalindrome and c > max, max = c)
        )
    )
    max println
)
Main do
