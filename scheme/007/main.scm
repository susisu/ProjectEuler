; ProjectEuler 007
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc 1 0 10001))
))

(define calc (lambda (n count max-count)
    (if (prime? n)
        (if (= (+ 1 count) max-count)
            n
            (calc (+ 1 n) (+ 1 count) max-count)
        )
        (calc (+ 1 n) count max-count)
    )
))

(define prime? (lambda (n)
    (if (<= n 1)
        #f
        (letrec*
            (
                (r (floor (sqrt n)))
                (itr (lambda (m)
                    (if (> m r)
                        #t
                        (if (= 0 (modulo n m))
                            #f
                            (itr (+ 1 m))
                        )
                    )
                ))
            )
            (itr 2)
        )
    )
))
