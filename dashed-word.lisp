;; DEMO 2.4
;; Transform user given string like this: example => -e-x-a-m-p-l-e- 

(defun dashed-word()
  (princ "Write word: ")
  (let* ((word (read-line))
	 (chars (coerce word 'list)))
    (apply #'concatenate 'string
	   (cons "-" (mapcar #'(lambda (x) (concatenate 'string
							(string x)
							(string #\-)))
			     chars)))))
