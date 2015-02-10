; ProjectEuler 001
; Scheme / main.scm
; copyright (c) 2015 Susisu

; Gauche 0.9.4
; `gosh main.scm`

(define main (lambda (args)
    (print (fold + 0
        (filter
            (lambda (n) (or
                (= 0 (modulo n 3))
                (= 0 (modulo n 5))
            ))
            (range 1 999)
        )
    ))
))

(define range (lambda (start end)
    (if (<= start end)
        (cons start (range (+ 1 start) end))
        ()
    )
))
