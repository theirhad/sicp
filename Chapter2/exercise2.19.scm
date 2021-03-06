#lang scheme
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-denomination
                    coin-values))
                coin-values)))))
(define (first-denomination list)
  (car list))
(define (except-first-denomination list)
        (cdr list))
(define (no-more? list)
  (null? list))

(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(define mk-coins (list 100 50 10 5 1))
(cc 100 us-coins)
(cc 100 uk-coins)
(cc 100 mk-coins)

; The order of coins is irrelevant. Because it checks all sublists.