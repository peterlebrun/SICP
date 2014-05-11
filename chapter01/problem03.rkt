#lang racket

;; this is probably not the most elegant possible solution
;; BUT I'm pretty pleased with it
(define (sum-squares a b)
  (+ (* a a) (* b b)))

(define (sum-max-two-numbers a b c)
  (if (= a (min a b c))
      (sum-squares b c)
      (if (= b (min a b c))
          (sum-squares a c)
          (sum-squares a b))))

(sum-max-two-numbers 3 3 3)