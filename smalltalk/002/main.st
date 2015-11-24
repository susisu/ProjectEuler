"
    ProjectEuler 002
    Smalltalk / main.st
    copyright (c) 2015 Susisu

    GNU Smalltalk 3.2.90
    `gst main.st`
"

main := [
    | a b c sum |
    a := 1.
    b := 2.
    sum := 0.
    [a < 4000000] whileTrue: [
        a \\ 2 = 0 ifTrue: [
            sum := sum + a.
        ].
        c := a.
        a := b.
        b := b + c.
    ].
    sum printNl.
].

main value.
