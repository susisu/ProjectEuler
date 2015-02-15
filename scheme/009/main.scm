; ProjectEuler 009
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 2))
))

(define calc (lambda (a b)
    (cond
        ((> a 332) (-1))
        ((>= b (- 1000 (+ a b))) (calc (+ 1 a) (+ 2 a)))
        (else
            (if (= 0 (+ (* 2 a b) (* -2000 (+ a b)) 1000000))
                (* a b (- 1000 (+ a b)))
                (calc a (+ 1 b))
            )
        )
    )
))
