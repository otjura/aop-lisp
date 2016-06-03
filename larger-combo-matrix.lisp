;; DEMO 4.1				
;; Write a method that gets two different 2D-matrices as parameters,
;; and returns a new matrix that has larger numbers of the two in it.

(defparameter *matrix-a* (make-array '(3 3)			       
				     :initial-contents '((23 54 76)
							 (43 65 87)
							 (12 87 34))))
(defparameter *matrix-b* (make-array '(3 3)
				     :initial-contents '((73 45 23)
							 (12 76 43)
							 (96 21 11))))

(defun larger-combo-matrix (ma mb)
  (let ((mc ma))
    (loop for i from 0 to 2 do
	 (loop for j from 0 to 2 do 
	      (if (< (aref ma i j) (aref mb i j))
		  (setf (aref mc i j) (aref mb i j)))))
    mc))
