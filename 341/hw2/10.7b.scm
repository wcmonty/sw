; return a list containing all elements of a given list that satisfy a given predicate. For example, (filter (lambda (x) (< x 5)) ’(3 9 5 8 2 4 7)) should return (3 2 4).

(define filterR
	(lambda (predicate l listSoFar)
		(cond
			((null? l) listSoFar)
			(#t 
				(if (predicate (car l)) 
						(filterR predicate (cdr l) (append listSoFar (list (car l)))) 
						(filterR predicate (cdr l) listSoFar))))))

(define filter
	(lambda (predicate l)
		(filterR predicate l '())))
