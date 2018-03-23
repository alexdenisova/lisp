(DEFUN ASSOC1 (X Y) (COND (X (COND ((equal (CAR (CAR X)) Y) (CDR (CAR X)))

(T (ASSOC1 (CDR X) Y))))
))

(print (ASSOC1 '((A . 1) (B . 2) (C . 3)) 'B))