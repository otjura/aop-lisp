;; DEMO 3.1
;; Write function that returns true if arg is prime and nil if not.

(defun primep (number)
  (let ((prime t))
    (if (not (or (= number 0) (= number 1)))
	(loop for divisor from 2 to (- number 1)
	   if (= (rem number divisor) 0)
	   do (progn (setf prime nil)
		     (return))))
    prime))
