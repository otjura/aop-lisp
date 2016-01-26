#| DEMO 2.6
   Print as many Fibonacci numbers as user wants! |#

(defun fibonacci (fibs)
  (iter 1 0 fibs))

(defun iter (a b tally)
  (if (not (= tally 0))
      (progn (print a)
	     (iter (+ a b) a (1- tally)))))
