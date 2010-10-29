(define (push lst val)
  (append lst (list val)))

(define (even? n)
  (= 0 (modulo n 2)))

(define (memoize proc)
  (let ((dict (make-hash-table 'equal)))
    (lambda args
      (or
       (hash-table-get dict args #f)
       (let ((ret (apply proc args)))
         (hash-table-put! dict args ret)
         ret)))))

(define (f n)
  (cond
    ((even? n)
     (/ n 2))
    (else
     (- (* 3 n) 1))))

(define (get-seq n count)
  (if (<= count 0)
      '()
      (let ((val (f n)))
        (cons n (get-seq val (sub1 count))))))

(define MAX_RUN 1000)

(define exceed-runs
  (let ((count 0))
    (lambda args
      (if (null? args)
          (set! count (add1 count))
          count))))

(define (type-i? n)
  (let loop ((n n)
             (count 0))
    (if (>= count MAX_RUN)
        (begin
          (printf "~a failed after ~a times!\n" n count)
          (exceed-runs)
          #f)
        (case n
          ((1 2)
           #t)
          ((5)  ; type ii
           #f)
          ((17) ; type iii
           #f)
          (else
           (loop (f n) (add1 count)))))))

(set! type-i? (memoize type-i?))

(define FROM 10000)

(define result
  (let loop ((i FROM)
             (lst '()))
    (if (<= i 0)
        lst
        (loop (sub1 i)
              (cons
               (cons i (type-i? i))
               lst)))))

(printf "~a numbers from 1 to ~a are not of type i, ~a exceeded ~a runs\n"
        (length (filter (lambda (pair)
                          (cdr pair))
                        result))
        FROM
        (exceed-runs 'get)
        MAX_RUN)