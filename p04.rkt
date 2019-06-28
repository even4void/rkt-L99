#lang racket

; P04 (*) Find the number of elements of a list.

(define (number-of lst)
  (if (null? lst) 0
      (add1 (number-of (rest lst)))))

(define (number-of-test)
  (equal? 5 (number-of (list "a" "b" "c" "d" "e"))))

(number-of-test)
