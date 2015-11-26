"
    ProjectEuler 009
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
    1 to: 332 do: [:a |
        a to: ((1000 - a) // 2) do: [:b |
            | c |
            c := 1000 - a - b.
            (a squared + b squared = c squared) ifTrue: [
                (a * b * c) printNl.
                ^ self.
            ].
        ].
    ].
!!

main := Main new.
main do.
