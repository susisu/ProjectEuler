"
    ProjectEuler 007
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = (|
        count <- 0.
        p <- 1.
    |
        [count < 10001] whileTrue: [
            p: p + 1.
            (p isPrime) ifTrue: [
                count: count + 1.
            ].
        ].
        p printLine.
    ).
|) main.
