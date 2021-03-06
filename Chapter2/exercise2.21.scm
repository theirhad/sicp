#lang scheme
(define (square x)
  (* x x))
(define (map proc items)
  (if (null? items)
      null
      (cons (proc (car items))
            (map proc (cdr items)))))
(define (square-list items)
  (if (null? items)
      null
      (cons (square (car items)) (square-list (cdr items)))))
(define (square-list items)
  (map square items))