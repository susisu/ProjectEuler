; ProjectEuler 010
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (calc-total (sieve-below 2000000)))
))

(define calc-total (lambda (vec)
    (letrec
        ((itr (lambda (i end acc)
            (if (<= i end)
                (if (vector-ref vec i)
                    (itr (+ 1 i) end (+ i acc))
                    (itr (+ 1 i) end acc)
                )
                acc
            )
        )))
        (itr 0 (- (vector-length vec) 1) 0)
    )
))

(define sieve-below (lambda (n)
    (if (<= n 0)
        (make-vector 1 #f)
        (letrec*
            (
                (table (make-vector n #t))
                (itr (lambda (p end)
                    (if (<= p end) (begin
                        (if (vector-ref table p)
                            (fill (* p p) p (- n 1))
                        )
                        (itr (+ 1 p) end)
                    ))
                ))
                (fill (lambda (i step end)
                    (if (<= i end) (begin
                        (vector-set! table i #f)
                        (fill (+ i step) step end)
                    ))
                ))
            )
            (vector-set! table 0 #f)
            (vector-set! table 1 #f)
            (itr 2 (floor (sqrt n)))
            table
        )
    )
))
