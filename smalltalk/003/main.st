"
    ProjectEuler 003
    Smalltalk / main.st
    copyright (c) 2015 Susisu

    GNU Smalltalk 3.2.90
    `gst main.st`
"

main := [
    | n d |
    n := 600851475143.
    d := 2.
    [n > 1] whileTrue: [
        n \\ d = 0 ifTrue: [
            n := n // d.
        ] ifFalse: [
            d := d + 1.
        ].
    ].
    d printNl.
].

main value.
