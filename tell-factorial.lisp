#| DEMO 3.6
   Return factorial of given number. If it has no factorial, return -1. |#

(defun tell-factorial (x &optional y)
  (/ (tell-factorial (/ x y) y)
