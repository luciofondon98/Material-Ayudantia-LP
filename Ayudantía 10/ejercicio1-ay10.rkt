#lang scheme

(define (cubo n)
  (* n (* n n)))

(define (sumar-cubos lista)
  (let rec ( (suma 0) (l lista) )
    (if (null? l)
        suma ;; Caso base
        (rec (+ suma (cubo (car l))) (cdr l)) ;; paso recursivo
        )
    )
  )

(sumar-cubos '(5 6 4 10 6))
(sumar-cubos '(9 3 4 2 1))