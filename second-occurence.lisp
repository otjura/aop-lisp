#| DEMO 2.2
   Print index of second occurence of first arg in second arg 
   if not found print error. |#

(defun second-occurence (a b)
  (let ((index (search a b :start2 (+ (length a) (search a b)))))
    (if (null index) (princ "not found") (princ index))))
