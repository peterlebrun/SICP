#lang racket

;; this is probably not the most elegant possible solution
;; BUT I'm pretty pleased with it
(define (sum-squares a b)
  (+ (* a a) (* b b)))

(define (max-two-numbers a b c)
  (if (= a (min a b c))
      (list b c)
      (if (= b (min a b c))
          (list a c)
          (list a b))))

(define (sum-max-two-numbers a b c)
  (apply sum-squares (max-two-numbers a b c)))