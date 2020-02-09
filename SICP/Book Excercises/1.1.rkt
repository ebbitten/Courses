#lang sicp
;Excercises 1.1-1.8
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (/ x 10000)))

;1.8
(define (curt-iter guess x)
  (if (good-enough2? guess x)
      guess
      (curt-iter (improve2 guess x)
                 x)))

(define (good-enough2? guess x)
  (< (abs (- guess (improve2 guess x))) (/ x 100)))

(define (square x)
  (* x x))

(define (improve2 guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(curt-iter 1 28)



