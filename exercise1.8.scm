#lang scheme
;so sexy;
(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0)))
(define (square x)
  (* x x))
(define absolute-tolerance 0.00000000000000001)
(define (cube x)
  (* (* x x) x)) 
(define (cubic-average x y)
  (/ (+ x y) 3))
(define (improve guess x)
  (cubic-average (/ x (square guess)) (* 2 guess)))
(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) absolute-tolerance))
(define (cubicroot-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubicroot-iter (improve guess x) x)))
(define (cubicroot x)
  (cubicroot-iter 1.0 x))
