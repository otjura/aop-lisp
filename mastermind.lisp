;; DEMO 4.6.
;; Mastermind is a game where player guesses scrambled numbers from 1 to 6.
;; Game checks how many correct numbers in correct place player guessed.

(defun mastermind ()
  (let* ((guesses 10)
	 (nums '(1 2 3 4 5 6))
	 (secret (map 'string #'digit-char (fyshuffle nums))))
    (princ "Welcome to Mastermind!") 
    (print "You can guess 10 times sequence with numbers from 1 to 6")
    (print secret)
    (loop while (> guesses 0) do
	 (let ((guess (read-line)))
	   (if (string-equal guess secret)
	       (progn (setf guesses -1)
		      (princ "Congratulations!"))
	       (progn (let ((count 0))
			(loop for i from 0 to (- (length secret) 1) do
			     (if (char-equal (char secret i) (char guess i))
				 (incf count)))
			(setf guesses (1- guesses))
			(princ "You got ") (princ count) (princ " right.")
			(terpri)
			(princ "Try again! You have ")
			(princ guesses) (princ " guesses: "))))))
    secret))

(defun fyshuffle (arg) 
  (let ((seq arg)) 
    (loop for i from (length seq) downto 2
       do (rotatef (elt seq (random i))
		   (elt seq (1- i))))
    seq))
