"
    ProjectEuler 009
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
    |
        1 to: 332 Do: [| :a |
            a to: (1000 - a) / 2 Do: [| :b. c |
                c: 1000 - a - b.
                ((a * a) + (b * b)) = (c * c) ifTrue: [
                    ((a * b) * c) printLine.
                    ^ self.
                ].
            ].
        ].
    ).
|) main.
