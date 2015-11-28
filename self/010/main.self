"
    ProjectEuler 010
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    parent* = self.
    n.
    table.
    sieve = (
        table: (false & false) asVector copySize: n FillingWith: true.
        2 to: (n squareRoot) Do: [| :i |
            (table at: i) ifTrue: [
                (i * i) to: (n - 1) By: i Do: [| :j |
                    table at:j Put: false.
                ].
            ].
        ].
    ).
    main: aN = (|
        sum <- 0.
    |
        n: aN.
        sieve.
        0 to: (n - 1) Do: [| :n |
            (table at: n) ifTrue: [
                sum: sum + n.
            ].
        ].
        sum printLine.
    ).
|) main: 2000000.
