(DEFUN APPEND1 (x y) (COND (x (CONS (CAR x) (APPEND1 (CDR x) y))) 
			(y (CONS (CAR y) (APPEND1 x (CDR y)))) 
						(T ()))) 
(print (APPEND1 '(A B) '(C D)))