#lang racket

;; P06 (*) Find out whether a list is a palindrome.
;;     A palindrome can be read forward or backward; e.g. (x a m a x).

(define (my-reverse lst)
  (if (null? lst)
    empty
    (append
      (my-reverse (cdr lst))
      (list (car lst)))))

(define (my-palindromep lst)
  (equal? lst (my-reverse lst)))
