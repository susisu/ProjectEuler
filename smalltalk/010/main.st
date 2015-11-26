"
    ProjectEuler 010
    Smalltalk / main.st
    copyright (c) 2015 Susisu

    GNU Smalltalk 3.2.90
    `gst -g main.st`
"

| main |

Object
    subclass: #Main
    instanceVariableNames: 'n table'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Project-Euler'.

Main class methodsFor: 'instance creation'
!
new: aN
    | r |
    r := super new.
    r init: aN.
    ^ r.
!!

Main methodsFor: 'initialization'
!
init: aN
    n := aN.
    self sieve.
!
sieve
    | r |
    table := Array new: (n - 1).
    table at: 1 put: false.
    2 to: (n - 1) do: [:i |
        table at: i put: true.
    ].

    r := n sqrt.
    2 to: r do: [:i |
        (table at: i) ifTrue: [
            (i * i) to: (n - 1) by: i do: [:j |
                table at: j put: false.
            ].
        ].
    ].
!!

Main methodsFor: 'Project Euler'
!
do
    | sum |
    sum := 0.
    1 to: (n - 1) do: [:i |
        (table at: i) ifTrue: [
            sum := sum + i.
        ].
    ].
    sum printNl.
!!

main := Main new: 2000000.
main do.
