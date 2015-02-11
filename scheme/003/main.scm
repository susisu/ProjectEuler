; ProjectEuler 003
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 600851475143 2))
))

(define calc (lambda (n p)
    (cond
        ((= 1 n) p)
        ((= 0 (modulo n p)) (calc (div n p) p))
        (else (calc n (+ 1 p)))
    )
))
