; ProjectEuler 006
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 100 0 0))
))

(define calc (lambda (n max s t)
    (if (<= n max)
        (calc (+ 1 n) max (+ n s) (+ (* n n) t))
        (- (* s s) t)
    )
))
