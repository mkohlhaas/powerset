#lang racket

; powerset: set -> set of sets
(define (powerset s)
  (cond [(set-empty? s) (set (set))]
	[else
	  (let ([ps-rst (powerset (set-rest s))])
	    (set-union ps-rst
		       (list->set (set-map ps-rst
					   (lambda (s1)
					     (set-add s1 (set-first s)))))))]))

(set-count (powerset (set 1 2 3 4 5 6 7 8 9 10)))
(powerset (set 1 2 3))
(powerset (set 1 2 3 4))
(powerset (set 1 2 3 4 5))

