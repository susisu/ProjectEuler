/*
 * ProjectEuler 010
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

Main := Object clone
Main init := method(
    self n := 2
    self table := List clone
    table setSize(n)
    sieve
)
Main setSize := method(n,
    self n := n
    self table := List clone
    table setSize(n)
    sieve
    return self
)
Main sieve := method(
    table atPut(0, false)
    table atPut(1, false)
    for(i, 2, n - 1,
        table atPut(i, true)
    )
    for(i, 2, n sqrt,
        if(table at(i),
            for(j, i * i, n - 1, i,
                table atPut(j, false)
            )
        )
    )
)
Main do := method(
    sum := 0
    for(i, 0, n - 1,
        if(table at(i), sum = sum + i)
    )
    sum asString(0, 0) println
)

main := Main clone setSize(2000000)
main do
