"
    ProjectEuler 004
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    parent* = lobby.
    isPalindrome: s = (| l |
        l: s size.
        0 to: (l / 2) floor Do: [| :i |
            (s at: i) != (s at: (l - 1 - i)) ifTrue: [
                ^ false.
            ]. 
        ].
        ^ true.
    ).
    main = (|
        max <- 0.
    |
        100 to: 999 Do: [| :a |
            a to: 999 Do: [| :b. p |
                p: a * b.
                (isPalindrome: (p asString)) && (p > max) ifTrue: [
                    max: p.
                ].
            ].
        ].
        max printLine.
    ).
|) main.
