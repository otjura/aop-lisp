;; DEMO 4.5.
;; Write method that gets 3x3 matrix representing tic-tac-toe game end result,
;; telling which player won or if the game is even.


(defparameter *xwinboard* (make-array '(3 3)
				      :initial-contents '((X O X)
							  (O X O)
							  (X O X))))
(defparameter *owinboard* (make-array '(3 3)
				      :initial-contents '((X O O)
							  (X O X)
							  (O X X))))
(defparameter *evenboard* (make-array '(3 3)
				      :initial-contents '((X O X)
							  (O X X)
							  (O X O))))

(defun tic-tac-toe-checker (board)
  (
