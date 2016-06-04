;; DEMO 4.6.
;; Mastermind is a game where player guesses scrambled numbers from 1 to 6.
;; Game checks how many correct numbers in correct place player guessed.

(defun mastermind ()
  (let ((guesses 10))
    (princ "Welcome to Mastermind!") 
    (print "You can guess 10 times number sequence with numbers from 1 to 6") 
    (loop while (> guesses 0) do
	 (if (check-guess guess correct)
	     (progn (1- guesses)
		    (princ "Try again!"))
	     (progn (setf guesses -1)
		    (princ "Congratulations!"))))))



(defun check-guess (guess correct)
  ())
