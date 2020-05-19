#lang racket

; powerset: set -> set of sets
(define (powerset s)
  (define (powerset0 s acc)
    (cond [(set-empty? s) acc]
	  [else
	    (powerset0 (set-rest s) 
		       (list->set 
			 (set-union acc
				    (list->set 
				      (set-map acc
					       (lambda (s1) 
						 (set-add s1 (set-first s))))))))]))
  (powerset0 s (set (set))))

(set-count (powerset (set 1 2 3 4 5 6 7 8 9 10)))
(powerset (set 1 2 3))
(powerset (set 1 2 3 4))
(powerset (set 1 2 3 4 5))


