#lang racket

(define (cube-root x)
  (define (change new old)
    (/ (abs (- old new)) new))
  (define (improve guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
  (define (good-enough? guess)
    (< (change (improve guess) guess) 0.0001))
  (define (cube-iter guess)
    (if (good-enough? guess)
        guess
        (cube-iter (improve guess))))
  (cube-iter 1.0))