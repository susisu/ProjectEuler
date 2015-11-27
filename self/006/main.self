"
    ProjectEuler 006
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        s <- 0.
        t <- 0.
    |
        1 to: 100 Do: [| :n |
            s: s + (n * n).
            t: t + n.
        ].
        t: t * t.
        (t - s) printLine.
    ).
|) main.
