#lang scheme


(define (lucas n)
  (cond
    ((eq? n 0) 2)
    ((eq? n 1) 1)
    (else (+ (lucas (- n 1)) (lucas (- n 2))))
    )
  )

(lucas 40)