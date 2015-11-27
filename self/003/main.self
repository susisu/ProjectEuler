"
    ProjectEuler 003
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        n <- '600851475143' asInteger. "numeric constant too large"
        d <- 2.
    |
        [n > 1] whileTrue: [
            (n % d) = 0 ifTrue: [
                n: n / d.
            ] False: [
                d: d + 1.
            ].
        ].
        d printLine.
    ).
|) main.

