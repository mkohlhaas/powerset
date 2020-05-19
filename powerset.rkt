#lang racket

; powerset: set -> list of sets
(define (powerset s)
  (cond [(set-empty? s) (list (set))]
	[else
	  (let* ([rst (set-rest s)]
		 [ps-rst (powerset rst)])
	    (append (map (lambda (s1)
			   (set-add s1 (set-first s)))
			 ps-rst)
		    ps-rst))]))

(length (powerset (set 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)))
(powerset (set 1 2 3))
(powerset (set 1 2 3 4))
(powerset (set 1 2 3 4 5))

