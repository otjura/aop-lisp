#| DEMO 1.6
   Ask string and print first, middle and last chars of string if odd length,
   or print first and last chars if even length. |#

(defun string-length-tester ()
  "@post: STRING"
  (let ((str (progn (princ "Write word: ") (read-line))))
    (if (oddp (length str))
	(format t "~a~%" (list (char str 0)
			       (char str (floor (length str) 2))
			       (char str (1- (length str)))))
	(format t "~a~%" (list (char str 0)
			       (char str (1- (length str))))))))
