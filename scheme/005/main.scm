; ProjectEuler 005
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 20 1))
))

(define calc (lambda (n max acc)
    (if (<= n max)
        (calc (+ 1 n) max (* acc (div n (gcd acc n))))
        acc
    )
))
