#lang racket

; P02 (*) Find the last but one box of a list.
;     Example:
;     * (my-but-last '(a b c d))
;     (C D)

(define (my-but-last lst)
  (cond [(null? lst) (error "Empty list")]
        [(null? (cdr lst)) (error "List too short")]
        [(null? (cddr lst)) lst]
        [else (my-but-last (cdr lst))]))

(define (my-but-last-test)
  (equal? '("c" "d") (my-but-last (list "a" "b" "c" "d"))))

(my-but-last-test)
