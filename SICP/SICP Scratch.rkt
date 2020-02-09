#lang sicp
(define (square x) (* x x))
(define (f1.3 a b c)
  (cond ((< a b c) (+ (square b) (square c)))
        ((< b c a) (+ (square c) (square a)))
        ((< c a b) (+ (square a) (square b)))
        )
  )

(define (p) ((p)))


