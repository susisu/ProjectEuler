"
    ProjectEuler 007
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
isPrime: n
    2 to: (n sqrt floor) do: [:d |
        n \\ d = 0 ifTrue: [
            ^ false.
        ].
    ].
    ^ true.
!
do
    | count p |
    count := 0.
    p := 1.
    [count < 10001] whileTrue: [
        p := p + 1.
        (self isPrime: p) ifTrue: [
            count := count + 1.
        ].
    ].
    p printNl.
!!

main := Main new.
main do.
