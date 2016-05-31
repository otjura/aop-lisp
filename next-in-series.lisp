;; DEMO 3.5
;; Write three overloaded methods that return next in line. 
;; For example: int: 1 3 => 5, float 1.2 1.5 => 1.8, boolean t nil => t 

(defun next-in-series (x y)
  (let ((result))
    (cond ((and (type-of x) (type-of y) 'boolean)
	   (if (eql x y) (setf result y) (setf result x)))
	  (or (and (type-of x) (type-of y) 'single-float)
	      (and (type-of x) (type-of y) 'double-float)
	      (setf result (+ y (- y x))))
	  ((and (type-of x) (type-of y) 'integer)
	   (setf result (+ y (- y x)))))
    result))
	
