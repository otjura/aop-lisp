#| DEMO 1.1
   Print longer string of two args |#
   
(defun longer-string (a b)
  "@param string string @return string"
  (princ (if (> (length a) (length b))
	     a
	     b)))
