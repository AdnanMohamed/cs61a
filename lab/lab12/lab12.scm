
(define-macro (def func args body)
  `(begin ,(def (func args) body) (func args))    
)


(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  'YOUR-CODE-HERE
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (helper 0 stream)
)

