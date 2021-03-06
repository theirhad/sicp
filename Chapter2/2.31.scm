#lang scheme
(define (tree-map proc tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (proc tree))
        (else (cons (tree-map proc (car tree))
                    (tree-map proc (cdr tree))))))
(define (square-tree tree)
  (define (square x) (* x x))
  (tree-map square tree))
(square-tree '(1 2 (3 4) (1 (1 1 4))))
