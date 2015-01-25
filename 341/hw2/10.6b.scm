(define minr
    (lambda (l minSoFar)
        (cond
            ((null? l) minSoFar)
            (#t (if (< (car l) minSoFar) (minr (cdr l) (car l)) (minr (cdr l) minSoFar))))))

(define min
    (lambda (l)
        (cond
            ((null? l) '())
            ((null? (cdr l)) (car l))
            (#t (minr (cdr l) (car l))))))

