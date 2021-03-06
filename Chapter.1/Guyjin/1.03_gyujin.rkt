#lang racket
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))
(define (>= a b)
  (not (< a b)))
(define (min-of-three a b c)
  (cond ((and (>= a c) (>= b c)) c)
        ((and (>= a b) (>= c b)) b)
        ((and (>= b a) (>= c a)) a)))
(define (x a b c)
  (cond ((= (min-of-three a b c) a) (sum-of-squares b c))
        ((= (min-of-three a b c) b) (sum-of-squares a c))
        ((= (min-of-three a b c) c) (sum-of-squares a b))))
(x 1 2 3)

(define (y a b c)
  (cond ((and (>= a c) (>= b c)) (+ (* a a) (* b b)))
        ((and (>= a b) (>= c b)) (+ (* a a) (* c c)))
        ((and (>= b a) (>= c a)) (+ (* b b) (* c c)))))
(y 1 2 3)
