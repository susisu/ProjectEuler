"
    ProjectEuler 005
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
do
    | p |
    p := 1.
    1 to: 20 do: [:n |
        p := p * n // (p gcd: n)
    ].
    p printNl.
!!

main := Main new.
main do.
