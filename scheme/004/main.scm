; ProjectEuler 004
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 100 100 0))
))

(define calc (lambda (a b p)
    (cond
        ((>= a 1000) p)
        ((>= b 1000) (calc (+ 1 a) 100 p))
        (else (let ((q (* a b)))
            (if (palindrome? q)
                (calc a (+ 1 b) (max p q))
                (calc a (+ 1 b) p)
            )
        ))
    )
))

(define palindrome? (lambda (n)
    (let ((s (string->list (number->string n)))) (equal? s (reverse s)))
))
