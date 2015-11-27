"
    ProjectEuler 004
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        max <- 0.
    |
        100 to: 999 Do: [| :a |
            a to: 999 Do: [| :b. p. s. t |
                p: a * b.
                s: p asString.
                t: p asString reverse.
                (s = t) && (p > max) ifTrue: [
                    max: p.
                ].
            ].
        ].
        max printLine.
    ).
|) main.

