; ProjectEuler 008
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (let*
        (
            (iport (open-input-file "./digits.txt"))
            (contents (read-line iport))
            (digits (map digit->integer (string->list contents)))
        )
        (print (calc 13 digits (length digits) 0))
    )
))

(define calc (lambda (n digits len max)
    (if (< len n)
        max
        (let
            ((s (fold * 1 (take digits n))))
            (if (> s max)
                (calc n (cdr digits) (- len 1) s)
                (calc n (cdr digits) (- len 1) max)
            )
        )
    )
))
