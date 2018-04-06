(DEFUN APPEND1 (x y) (cond (x (cons (car x) (APPEND1 (CDR x) y)))
			(y (cons (car y) (APPEND1 x (CDR y))))
			(T ())))

(DEFUN BUBBLESORT (X) (COND ((NULL X) (NIL))
               ((NULL (CDR X)) (CONS (CAR X) NIL))
               ((> (CAR X) (CADR X)) (CONS (CADR X)(BUBBLESORT (CONS (CAR X) (CDDR X))))) 
               (T (CONS (CAR X) (BUBBLESORT (CDR X))))))

(DEFUN SORT1(X &OPTIONAL(N 0) ) (COND ((< N (LENGTH X)) (SORT1 (BUBBLESORT X) (+ N 1))) 
				(T X))) 


(DEFUN MERGE1(X Y) (SORT1 (APPEND1 X Y)))

(PRINT (MERGE1 '(1 3 5) '(2 4)))