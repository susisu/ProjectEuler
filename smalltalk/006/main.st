"
    ProjectEuler 006
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
    | s t |
    s := 0.
    t := 0.
    1 to: 100 do: [:n |
        s := s + (n * n).
        t := t + n.
    ].
    t := t * t.
    (t - s) printNl.
!!

main := Main new.
main do.
