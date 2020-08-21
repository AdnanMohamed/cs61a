(define (over-or-under num1 num2)
  (cond 
    ((> num1 num2) 1)
    ((< num1 num2) -1)
    (else 0)
  )
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0


(define (filter-lst fn lst)
  ; # pyth-schemic pseudo.
  ; if lst is nil:
  ;     return lst
  ; elif fn(car lst):
  ;     return (append list(car lst) cdr lst)
  ; else:
  ;     return filter-lst(fn cdr lst)
  (cond
    ((null? lst) lst)
    ((fn (car lst)) (append (list (car lst)) (filter-lst fn (cdr lst))))
    (else (filter-lst fn (cdr lst)))
    )
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (make-adder num)
  (lambda (x) (+ num x))
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13


(define lst
  '((1) 2 (3 4) (5))
)


(define (composed f g)
  (lambda (x) (f (g x)))
)


(define (remove item lst)
  (filter-lst (lambda (x) (not (= item x))) lst)
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)


(define (no-repeats s)
  (cond
    ((null? s) nil)
    ((null? (cdr s)) s)
    (else (cons (car s) (no-repeats (filter-lst (lambda (x) (not (=(car s) x))) (cdr s)))))
    )
)


(define (substitute s old new)

)


(define (sub-all s olds news)
  'YOUR-CODE-HERE
)

