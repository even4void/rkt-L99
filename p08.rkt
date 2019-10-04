#lang racket

;; P08 (**) Eliminate consecutive duplicates of list elements.
;;     If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
;;     Example:
;;     * (compress '(a a a a b c c a a d e e e e))
;;     (A B C A D E)

(define (compress l)
  (cond
   [(empty? l) empty]
   [(empty? (rest l)) l]
   [else
    (let ([i (first l)])
      (if (equal? i (first (rest l)))
          (compress (rest l))
          (cons i (compress (rest l)))))]))
