#| DEMO 1.4
   Parse first name and surname from whole name assuming just fname lname combo |#
   
(defun name-parser ()
  "@return string"
  (format t "Give your name: ")
  (let ((name (read-line)))
    (format t "Full name: ~a~%" (string-capitalize name))
    (let ((fname (subseq name 0 (- (position #\a name) 2)))
	  (lname (subseq name (- (position #\a name) 1))))
      (format t "First name: ~a~%Last name: ~a~%" (string-capitalize fname)
	      (string-capitalize lname)))))
