(defparameter *user* "Bartek")

(defun hello ()
  (format t "~A~A~%" "Hello, " *user*))

(hello)
