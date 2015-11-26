"
    ProjectEuler 008
    Self / main.self
    copyright (c) 2015 Susisu

    Self Mallard 4.5.0
    `Self -s Clean.snap -p -f main.self`
"

"
    For information about flags and mode of `os openFileName:Flags:Mode:IfFail:`, see open(2)
        e.g. http://man7.org/linux/man-pages/man2/openat.2.html
"

(|
    parent* = lobby.
    main = (|
        file.
        digits.
        max.
    |
        "load digits from file"
        file: os openFileName: './digits.txt'
            Flags: 0    "O_RDONLY"
            Mode: 8r644
            IfFail: [ 'error on opening file' printLine. ^ self. ].
        digits: file readLine.
        os closeFile: file
            IfFail: [ 'error on closing file' printLine. ^ self. ].

        max: 0.
        0 to: (digits size - 13) Do: [| :i. p |
            p: 1.
            i to: (i + 12) Do: [| :j |
                p: p * ((digits at: j) asByte - 48).
            ].
            p > max ifTrue: [
                max: p.
            ].
        ].
        max printLine.
    ).
|) main.
