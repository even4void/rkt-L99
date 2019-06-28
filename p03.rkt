#lang racket

; P03 (*) Find the K'th element of a list.
;     The first element in the list is number 1.
;     Example:
;     * (element-at '(a b c d e) 3)
;     C

(define (element-at lst idx)
  (cond [(not (and (integer? idx) (positive? idx))) (error "Invalid index " idx)]
        [(null? lst) (error "Empty list")]
        [(= 1 idx) (first lst)]
        [else (element-at (rest lst) (sub1 idx))]))

(define (element-at-test)
  (equal? "c" (element-at (list "a" "b" "c" "d" "e") 3)))

(element-at-test)
