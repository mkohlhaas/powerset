#lang racket

; powerset: set -> set of sets
(define (powerset s)
  (for/fold ([acc (set(set))])
	    ([element s])
	    (set-union acc
		       (list->set 
			 (set-map acc
				  (lambda (s1) 
				    (set-add s1 element)))))))

(set-count (powerset (set 1 2 3 4 5 6 7 8 9 10)))
(powerset (set 1 2 3))
(powerset (set 1 2 3 4))
(powerset (set 1 2 3 4 5))
