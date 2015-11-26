"
    ProjectEuler 002
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        sum <- 0.
        a <- 1.
        b <- 2.
        c <- 0.
    |
        [a < 4000000] whileTrue: [
            (a % 2) = 0 ifTrue: [
                sum: sum + a.
            ].
            c: a.
            a: b.
            b: b + c.
        ].
        sum printLine.
    ).
|) main.
