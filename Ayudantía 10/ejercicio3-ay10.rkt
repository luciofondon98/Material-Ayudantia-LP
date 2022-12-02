#lang scheme

(define (cortar n lista)
  (let rec ( (l lista) (menor '()) (igual '()) (mayor '()) )
    (if (null? l)
        (append (list menor) (list igual) (list mayor) )
        (cond
          ((= (car l) n) (rec (cdr l) menor (append igual (list (car l))) mayor)) ; caso igual
          ((> (car l) n) (rec (cdr l) menor igual (append mayor (list (car l))))) ; caso mayor
          (else (rec (cdr l) (append menor (list (car l))) igual mayor)) ;caso menor
          )
        ) 
    )
  )


(cortar 6 '(1 4 2 6 4 8 6 2 1 7 4 5 1))
