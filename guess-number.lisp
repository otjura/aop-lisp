#| DEMO 3.2
   Program generates random number between 1..20 and user needs to guess it.
   Program has to guide user by telling if number is smaller or larger. |#

(defparameter *random* (+ 1 (random 19)))

(defun guess-number ()
  "@post: STRING"
  (princ "Guess: ")
  (let ((guess (read)))
    (if (= guess *random*)
	(progn (princ "Congratulation!!")
	       (fresh-line)
	       (princ "Play again? (y/n) ")
	       (let ((answer (read-line)))
		 (if (equalp answer "y")
		     (progn (setf *random* (+ 1 (random 9)))
			    (guess-number))
		     (progn (fresh-line)
			    (princ "Bye bye!")))))
	(if (> guess *random*)
	    (progn (princ "smaller..")
		   (fresh-line)
		   (guess-number))
	    (progn (princ "larger..")
		   (fresh-line)
		   (guess-number))))))
