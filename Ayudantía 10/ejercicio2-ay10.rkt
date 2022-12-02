#lang scheme

(define (valor nodo)
  (if (null? nodo)
      '()
      (car nodo)
      )
  )

(define (izq nodo)
  (if (null? nodo)
      '()
      (car (cdr nodo))
      )
  )

(define (der nodo)
  (if (null? nodo)
      '()
      (car (cdr (cdr nodo)))
      )
  )

(define (in-order arbol)
  (if (null? arbol) ;;caso base
      '()
      (append (in-order (izq arbol))
              (list (valor arbol))
              (in-order (der arbol))
              )
      )
  )

(define arbol '( 28 (16 (5 () (12 () ())) (19 (17 () ()) (21 () ()))) (30 (29 () ()) (32 () ()))))
(in-order arbol)

;(valor  '( 28 (16 (5 () (12 () ())) (19 (17 () ()) (21 () ()))) (30 (29 () ()) (32 () ()))))
;(der  '( 28 (16 (5 () (12 () ())) (19 (17 () ()) (21 () ()))) (30 (29 () ()) (32 () ()))))
;(izq  '( 28 (16 (5 () (12 () ())) (19 (17 () ()) (21 () ()))) (30 (29 () ()) (32 () ()))))
