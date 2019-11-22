#lang racket

;; remove-first: List -> List
;; usage: (remove-first symbol list) = remove first occurence of symbol
(define remove-first
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? (car los) s)
            (cdr los)
            (cons (car los) (remove-first s (cdr los)))))))



; reference
; ---------

; (define id expr):
; define global identifier

; (lambda (args...) body) 
; define a function

; (eqv? a b)
; check if a is equal to b
; (types need not be same)

; (null? list)
; is list is empty

; (car list)
; returns first element of list (head)

; (cdr list)
; get elements of list excluding the first (tail)

; (cons value list)
; get a new list with value appended to the front of the list