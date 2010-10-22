(define (memoize proc)
  (let ((dict (make-hash-table 'equal)))
    (lambda args
      (let ((val (hash-table-get dict args #f)))
        (or val
            (let ((ret (apply proc args)))
              (hash-table-put! dict args ret)
              ret))))))

(define (T n)
  (if (<= n 2)
      1
      (+ (T (- n 2))
         (T (- n 3)))))

(define (expr n)
  (+ (/ (T (+ n 1))
        (T n))
     0.0))

(set! T (memoize T))