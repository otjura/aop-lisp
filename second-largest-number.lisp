#| DEMO 1.5
   Ask three numbers and print the second largest. |#
   
(defun second-largest-number1 ()
  "@return number"
  (princ "Give first number: ")
  (let ((first (read)))
    (princ "Give second number: ")
    (let ((second (read)))
      (princ "Give third number: ")
      (let ((third (read)))
      	(princ (cadr (sort (list first second third) #'<)))))))

;; alternative with LET* and PROGN
(defun second-largest-number2 ()
  "@return number"
  (let* ((first (progn (princ "First number: ") (read)))
	 (second (progn (princ "Second number: ") (read)))
	 (third (progn (princ "Third number: ") (read))))
    (princ (cadr (sort (list first second third) #'<)))))
