(DEFUN APPEND1 (x y) (COND (x (CONS (CAR x) (APPEND1 (CDR x) y))) 
			(y (CONS (CAR y) (APPEND1 x (CDR y)))) 
						(T ()))) 
(DEFUN REVERSE1 (X) (COND (X (APPEND1 (REVERSE1 (CDR X)) (CONS (CAR X) NIL)))
                         (T NIL)))

(print (REVERSE1 '(A B C D)))