; ProjectEuler 001
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 999 0))
))

(define calc (lambda (n max sum)
    (if (<= n max)
        (if (or (= 0 (modulo n 3)) (= 0 (modulo n 5)))
            (calc (+ 1 n) max (+ n sum))
            (calc (+ 1 n) max sum)
        )
        sum
    )
))
