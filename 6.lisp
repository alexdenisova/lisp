(DEFUN APPEND1 (X Y) (COND (X (CONS (CAR X) (APPEND1 (CDR X) Y))) 
            (Y (CONS (CAR Y) (APPEND1 X (CDR Y)))) 
            (T ()))) 
(DEFUN ATOMS (X)(COND((NULL X) NIL)
                   ((ATOM (CAR X)) (APPEND1 (CONS (CAR X) NIL) (ATOMS (CDR X))))
                   (T (APPEND1 (ATOMS (CAR X))(ATOMS (CDR X))))))

(PRINT (ATOMS '((A B) C NIL (D (E F G)))))