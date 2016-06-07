;; DEMO 5.1.
;; Write program that prints all numbers between 100 and 200 
;; that are dividable by three but not by five.

(defun divide-by-three-not-five ()
  (loop for i from 100 to 200 do
       (if (and (not (= (mod i 5) 0)) (= (mod i 3) 0))
	   (print i))))
