;; DEMO 2.1
;; Print stylized multiplication table of ints n and m
;; in following style: i X m = i*m while i <= n

(defun multiplication-table ()
  (let* ((n (progn (princ "Number to multiply: ") (parse-integer (read-line))))
	 (m (progn (princ "Multiply until:     ") (parse-integer (read-line)))))
    (loop for i from 1 upto m do
	 (format t "~s X ~s = ~s~%" i n (* i n)))))
