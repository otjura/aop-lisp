;; DEMO 1.1
;; Print longer string of two args.
   
(defun longer-string (a b)
  (princ (if (> (length a) (length b))
	     a
	     b)))
