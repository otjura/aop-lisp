;; DEMO 2.5
;; Write program that prints pretty diamond with height of arg,
;; but give error message if arg is not odd.

(defun diamond (height)
  (if (not (oddp height))
      (princ "Height needs to be odd number!")
      (let ((half (floor (/ height 2))) (stars 1))
	(dotimes (top half)
	  (dotimes (spacetop (- half top)) (princ "."))
	  (dotimes (startop stars) (princ "*"))
	  (setf stars (+ stars 2))
	  (fresh-line))
	(dotimes (sparky height) (princ "*"))
	(fresh-line)
	(setf stars (- stars 2))
	(dotimes (bottom half)
	  (dotimes (spacebottom (1+ bottom)) (princ "."))
	  (dotimes (starbottom stars) (princ "*"))
	  (setf stars (- stars 2))
	  (fresh-line)))))
