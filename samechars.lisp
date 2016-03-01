#| DEMO 3.4
   Create function that returns string of letters that are in both args,
   for example if arg0 is "tree" and arg1 "free" program returns "ree", but
   if arg1 is "fred" it returns "re". |#

(defun samechars (arg0 arg1)
  "@param string string @return string"
  (if (equal arg0 arg1)
      arg0
      (let* ((tmp1 (loop for char across arg0 collect char))
	     (tmp2 (loop for char across arg1 collect char)))
	(concatenate 'string (intersection tmp1 tmp2)))))
