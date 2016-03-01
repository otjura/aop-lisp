#| DEMO 2.3
   Function gets two args.
   Remove all the chars in first arg that are in second arg. |#

(defun remove-chars (string toremove)
  "@param string string @return string"
  (format t "the string is ~s~%to remove are ~s~%" string toremove)
  (princ (remove-if (lambda (char) (find char toremove)) string)))
