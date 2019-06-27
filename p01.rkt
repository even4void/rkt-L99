#lang racket

; P01 (*) Find the last box of a list.
;     Example:
;     * (my-last '(a b c d))
;     (D)

(define (my-last lst)
  (cond [(null? lst) (error "Empty list")]
        [(null? (cdr lst)) lst]
        [else (my-last (cdr lst))]))

(define (my-last-test)
  (equal? '("d") (my-last (list "a" "b" "c" "d"))))

(my-last-test)
