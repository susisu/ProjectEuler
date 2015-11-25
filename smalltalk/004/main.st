"
    ProjectEuler 004
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
isPalindrome: n
    | s |
    s := n asString.
    ^ s = s reverse.
!
do
    | max |
    max := 0.
    100 to: 999 do: [:i |
        i to: 999 do: [:j |
            | p |
            p := i * j.
            (self isPalindrome: p) ifTrue: [
                p > max ifTrue: [
                    max := p.
                ].
            ].
        ].
    ].
    max printNl.
!!

main := Main new.
main do.
