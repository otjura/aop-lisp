;; DEMO 5.4.
;; Write method that returns array with smallest and largest int of param array.

(defun smallest-and-largest (array)
  (let* ((sma (reduce #'min array))
	 (lar (reduce #'max array))
	 (smalar (make-array '(2) :element-type 'integer :fill-pointer 0)))
    (vector-push sma smalar)
    (vector-push lar smalar)
    smalar))
