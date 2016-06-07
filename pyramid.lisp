;; DEMO 5.2.
;; Write a program that prints a pyramid of height given as argument.

(defun pyramid (height)
  (let* ((spaces (- height 1))
	 (stars 1))
    (dotimes (i height)
      (dotimes (i spaces) (princ " "))
      (dotimes (i stars) (princ "*"))
      (terpri)
      (setf stars (+ stars 2))
      (setf spaces (- spaces 1)))))
      
