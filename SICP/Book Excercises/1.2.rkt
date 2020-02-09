#lang sicp

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;Excercise 1.9
;The first process that is generated will be recursive, the "inc" function will keep building up outside the + function
;The second process will be iterative, at any point in time the state of a and b could be paused
;and they would keep the same length as the interal operators are primitives/defined outside of tis function

;Excercise 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; (f n) (A 0 n) -> (* 2 n)
; (g n) (A 1 n) -> (A 0 (A 1 (- n 1))) -> (* 2 (A 1 (- n 1))) -> (** 2 n)
; (h n) (A 2 n) -> (A 1 (A 2 (- n 1))) -> (** 2 (** 2 (A 2 (- n 2))...

;1.11

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f* n)
  (define (f*-iter a b c count n)
    (if (= count n)
        a
        (f*-iter
         (+ a (* 2 b) (* 3 c))
         a
         b
         (+ count 1)
         n)))
  (if (< n 3)
      n
      (f*-iter 2 1 0 2 n)))
;1.12
(define (pascal n)
  (define (find-lines-above line counter n)
    (if (>= (+ line counter) n)
        (- line 1)
        (find-lines-above (+ line 1) (+ line counter) n)))
  (define (find-spots-above lines-above counter)
    (if (= lines-above 0)
        counter
        (find-spots-above (- lines-above 1) (+ counter lines-above))))
  (define (find-position n)
    (- n
       (find-spots-above
        (find-lines-above 0 0 n)
        0)))
   (if (= n 1)
      1
      (cond ((= (find-position n) 1) 1)
            ((= (- (find-position n) (find-lines-above 0 0 n)) 1) 1)
            (else (+
                   (pascal (- n (find-lines-above 0 0 n) 1))
                   (pascal (- n (find-lines-above 0 0 n))))))))
            
;1.14 order of growth should be polynomail with the increasing amount of change and exponential with increasin gtypes of currencies in time required and linear in space
;1.15 : once for 12.15, twice at 4.05, thrice at 1.016, fourx at .33, five times at .11 sixth and final at ~.04
; space and steps both grow logathrithmically

;1.16

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(define (iter-expt b n)
  (iter-expt-recur b 1 n))

(define (iter-expt-recur b counter n)
  (cond ((= n 0) counter)
        ((even? n)(iter-expt-recur (square b) counter (/ n 2)))
        (else (iter-expt-recur b (* counter b) (- n 1)))))

(define (double n)
  (* n 2))
(define (halve n)
  (/ n 2))
;1.17
(define (*-fast a b)
  (cond ((= b 0) 0)
        ((even? b)(double (*-fast a (halve b))))
        (else (+ a (*-fast a (- b 1))))))
;1.18
(define (*-iter a b)
  (cond ((= b 0) 0)
        ((even? b)(*-iter (double a) (halve b)))
        (else (+ a (*-iter a (- b 1))))))

;1.19??

;1.21
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
(define (divides? a b)
  (= (remainder b a) 0))
;1.23
(define (next test-divisor)
  (if (= test-divisor 2)
      3
      (+ test-divisor 2)))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

;1.22
(define (search-for-primes a b)
  (timed-prime-test a)
   (if (>= a b)
       (display "Reached end of search")
       (search-for-primes (+ a 2) b)))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x)
  (* x x x))

(define (identity x) x)
(define (inc x) (+ x 1))

;l.29
(define (simpson-integral f a b n)
  (define (h a b n)
    (/ (- b a) n))
  (define (yk f a k h n)
    (f (+ a (* k (h a b n)))))
  (define (term k)
    (* (yk f a k h n) (cond
            ((= k 0) 1)
            ((= k n) 1)
            ((even? k) 2)
            (else 4))))
  (define (next k) (inc k))
  (* (/ (h a b n) 3) (sum term 0 next n)))

;1.30
(define (sum* term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

;1.31
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (dec x) (- x 1))

(define (fact x)
  (product identity 1 inc x))

(define (// a b) (- (/ a b) (/ (remainder a b) b)))

(define (pi4 n)
  (define (numerator k)
    (+ 2 (* (// k 2) 2)))
  (define (denominator k)
    (+ 3 (* (// (dec k) 2) 2)))
  (/ (product numerator 1 inc n) (product denominator 1 inc n)))

(define (product* term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

;1.32
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulate* combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (sum** term a next b)
  (accumulate + 0 term a next b))

(define (product** term a next b)
  (accumulate * 1 term a next b))

;1.33
(define (filtered-accumulate combiner null-value filter term a next b)
  (define (term* a)
    (if (filter (term a))
        (term a)
        null-value))
  (accumulate combiner null-value term* a next b))

(define (GCD i n guess)
  (if (and
       (= (remainder n guess) 0)
       (= (remainder i guess) 0))
      guess
      (GCD i n (- guess 1))))
(define (relative-prime? i n)
  (= 1 (GCD i n n)))