#| DEMO 3.4
   Create function that returns string of letters that are in both args,
   for example if arg0 is "tree" and arg1 "free" program returns "ree", but
   if arg1 is "fred" it returns "re". |#

(defun samechars (arg0 arg1)
  (declare (type (string) arg0 arg1))
  (if (string= arg0 arg1)
      arg0
      nil))
