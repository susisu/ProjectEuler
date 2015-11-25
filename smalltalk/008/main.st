"
    ProjectEuler 008
    Smalltalk / main.st
    copyright (c) 2015 Susisu

    GNU Smalltalk 3.2.90
    `gst -g main.st`
"

| main |

Object
    subclass: #Main
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Project-Euler'.

Main methodsFor: 'Project Euler'
!
calc: digits
    | max |
    max := 0.
    1 to: (digits size - 12) do: [:i |
        | p |
        p := 1.
        i to: (i + 12) do: [:j |
            p := p * ((digits byteAt: j) - 48).
        ].
        (p > max) ifTrue: [
            max := p.
        ].
    ].
    ^ max.
!
do
    './digits.txt' asFile withReadStreamDo: [:stream |
        (self calc: stream nextLine) printNl.
    ].
!!

main := Main new.
main do.
