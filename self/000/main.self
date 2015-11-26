"
    ProjectEuler 000
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

(|
    main = ('Hello, world!' printLine).
|) main.

"
Add slot 'main' to 'lobby': 

    _AddSlots: (|
        main <- (|
            do = ('Hello, world!' printLine).
        |).
    |).

    main do.
"
