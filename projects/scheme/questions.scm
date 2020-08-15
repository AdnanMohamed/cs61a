(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
  (map (lambda (rest) (cons first rest)) rests)
)

(define (zip pairs)
  (if (null? pairs) '(() ())
      (map (lambda (pair) ())
      )

;; Returns a list of two-element lists
(define (enumerate s)
    (define (enumerate-tail s sofar n)
        (if (null? s) sofar
            (enumerate-tail (cdr s) (append sofar (list (list n (car s)))) (+ n 1))
        )    
    )
  (enumerate-tail s nil 0)    
)

;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  (cond ((zero? total) '(()))
        ((or (< total 0) (null? denoms)) nil)
        (else (append (cons-all (car denoms)
                                (list-change (- total (car denoms))
                                             denoms
                                )
                      )
                      (list-change total (cdr denoms))
              )
        )
  )
)

;; Problem 18
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 18
         'replace-this-line
         ; END PROBLEM 18
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 18
         'replace-this-line
         ; END PROBLEM 18
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           'replace-this-line
           ; END PROBLEM 18
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           'replace-this-line
           ; END PROBLEM 18
           ))
        (else
         ; BEGIN PROBLEM 18
         'replace-this-line
         ; END PROBLEM 18
         )))