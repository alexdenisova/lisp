(DEFUN BUBBLESORT (X) (COND ((NULL X) (NIL))
               ((NULL (CDR X)) (CONS (CAR X) NIL))
               ((> (CAR X) (CAR (CDR X))) (CONS (CAR (CDR X)) (BUBBLESORT (CONS (CAR X) (CDR (CDR X)))))) 
               (T (CONS (CAR X) (BUBBLESORT (CDR X))))))

(DEFUN SORT1(X &OPTIONAL(N 0)) (COND ((< N (LENGTH X)) (SORT1 (BUBBLESORT X) (+ N 1)))
				(T X))) 
(PRINT (SORT1 '(1 5 2 4 3)))