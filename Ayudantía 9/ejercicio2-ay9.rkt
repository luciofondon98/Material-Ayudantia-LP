#lang scheme


(define (aplicar f g x)
  (if (odd? x)
      (+ (f(f x)) (g x))
      (+ (g(g x)) (f x))
      )
  )

(aplicar (lambda(x) (* x x)) (lambda(x) (* 2 x)) 3)

