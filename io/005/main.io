/*
 * ProjectEuler 005
 * Io / main.io
 * copyright (c) 2015 Susisu
 *
 * Io v20140919
 * `io main.io`
 */

gcd := method(a, b,
    if(a < b,
        return gcd(b, a),
        if(a % b == 0,
            return b,
            return gcd(b, a % b)
        )
    )
)

Main := Object clone
Main do := method(
    p := 1
    for(n, 1, 20,
        p = p * n / gcd(p, n)
    )
    p println
)
Main do
