"
    ProjectEuler 001
    Smalltalk / main.st
    copyright (c) 2015 Susisu

    GNU Smalltalk 3.2.90
    `gst main.st`
"

| main |

main := [
    | sum |
    sum := 0.

    1 to: 999 do: [:n |
        (n \\ 3 = 0) | (n \\ 5 = 0) ifTrue: [
            sum := sum + n
        ]
    ].

    sum printNl.
].

main value.
