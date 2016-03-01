#| DEMO 1.3
   Print average of two doubles and one integer from args. |#

(setf *read-default-float-format* 'double-float)

(defun average-calculator (x y z)
  "@param float float int @return number"
  (declare (float x y))
  (declare (integer z))
  (princ (/ (+ x y z) 3)))
