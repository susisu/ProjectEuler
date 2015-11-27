"
    ProjectEuler 005
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        p <- 1.
    |
        1 to: 20 Do: [| :n |
            p: (p * n) / (p gcd: n).
        ].
        p printLine.
    ).
|) main.
