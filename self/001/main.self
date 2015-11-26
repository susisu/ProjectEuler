"
    ProjectEuler 001
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        sum <- 0
    |
        1 to: 999 Do: [| :n |
            ((n % 3) = 0) || ((n % 5) = 0) ifTrue: [
                sum: sum + n.
            ].
        ].
        sum printLine.
    ).
|) main.
