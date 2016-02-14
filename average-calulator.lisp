#| DEMO 1.3
   Print average of two doubles and one integer from args. |#
   
(defun average-calculator (x y z)
  "@pre: NUMBER @post: FLOAT" 
  (declare (float x y))
  (declare (integer z))
  (princ (/ (+ x y z) 3)))
