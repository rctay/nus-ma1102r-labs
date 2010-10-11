(define (make-point name x y)
  (list name x y))

(define name-of car)
(define x-of cadr)
(define y-of caddr)

(define (equation-of-line p1 p2)
  (let* ([x0 (x-of p1)]
         [y0 (y-of p1)]
         [m (/ (- (y-of p2) y0)
               (- (x-of p2) x0))]
         [c (- y0 (* m x0))])
    (lambda (message)
      (case message
        ((display)
         (format "y = ~a * x + ~a" m c))
        (else
         (let ([x message])
            (+ (* m x) c)))))))

(define (k-of-line p1 p2 k)
  (make-point 'anon
              (/ (+ (x-of p1) (* k (x-of p2)))
                 (+ k 1))
              (/ (+ (y-of p1) (* k (y-of p2)))
                 (+ k 1))))

(define (square x)
  (* x x))

(define (distance p1 p2)
  (sqrt (+ (square (- (x-of p1) (x-of p2)))
           (square (- (y-of p1) (y-of p2))))))

; FIXME seems to get (90 - ang)
(define (angle-between pC pA pB)
  (let ([a (distance pC pB)]
        [b (distance pC pA)]
        [c (distance pA pB)])
    (acos
     (/ (+ (square a) (square b) (- (square c)))
        (* 2 a b)))))

(define (altitude-on p1 p2 p-alt)
  (let ([ang (angle-between p1 p-alt p2)]
        [h (distance p1 p-alt)]
        [b (distance p1 p2)])
    (let ([k (* h (cos ang))])
      (k-of-line p1 p2 (/ k (- b k))))))

; FIXME implement solve
(define (orthocenter pA pB pC)
  (let ([pAonBC (altitude-on pB pC pA)]
        [pBonAC (altitude-on pA pC pB)]
        [pConAB (altitude-on pA pB pC)])
    (let ([eq1 (equation-of-line pA pAonBC)]
          [eq2 (equation-of-line pB pBonAC)]
          [eq3 (equation-of-line pC pConAB)])
      (list
       eq1
       eq2
       eq3))))

(define (round-places num places)
  (define exp (expt 10 places))
  (/ (round (* num exp))
     exp))

(define PLACES 5)

(define (test-equations eqns x0 y0)
  (map (lambda (eq)
         (printf "got line ~a\n" (eq 'display))
         (printf "testing x=~a, y=~a...~a\n"
                 x0 y0
                 (if (equal? (round-places y0 PLACES)
                             (round-places (eq x0) PLACES))
                     "pass"
                     "FAIL")))
       eqns))

(define pA (make-point 'A 1 5))
(define pB (make-point 'B 20 1))
(define pC (make-point 'C 10 8))

(test-equations (orthocenter pA pB pC)
                12.96774193548387
                22.09677419354839)