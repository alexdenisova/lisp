(DEFUN LENGTH1 (x) (COND (x (+ 1 (LENGTH1 (CDR x))))

					((T) 0)))

(print (LENGTH1 '(A B C D)))