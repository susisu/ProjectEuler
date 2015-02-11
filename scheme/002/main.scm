; ProjectEuler 002
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 1 4000000 0))
))

(define calc (lambda (a b max sum)
    (if (<= a max)
        (if (= 0 (modulo a 2))
            (calc b (+ a b) max (+ a sum))
            (calc b (+ a b) max sum)
        )
        sum
    )
))
