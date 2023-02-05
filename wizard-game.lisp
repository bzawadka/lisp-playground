(defparameter *nodes* '((living-room (you are in the living room.
					  a wizard is snoring loudly on the couch.))
			(garden (you are in a beautiful garden.
				     there is a well in front of you.))
			(attic (you are in the attic.
				    there is a giant welding torch in the corner.))))

(defun describe-location (location nodes)
  (cadr (assoc location nodes)))

(defparameter *edges* '((living-room (garden west door)
                                     (attic upstairs ladder))
                       (garden (living-room east door))
                       (attic (living-room downstairs ladder))))

; quasiquoting - create chunks of data that have small pieces of Lisp code embedded in them
(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) to ,(car edge)))

; generate descriptions for all edges from a given location
; mapcar takes another function and a list - then applies this function to every member of a list
;   (mapcar #'sqrt '(1 2 3 4 5))
; append joins several lists into one
;   (append '(mary had) '(a) '(little lamb))
; apply - you pass it a function and a list of objects
;    it pretends that the items in the list are separate objects, and passes them to the given function as such
;   (apply #'append '((mary had) (a) (little lamb)))
; location - current player's location
(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

(defparameter *objects* '(whiskey bucket frog chain))

(defparameter *object-locations* '((whiskey living-room)
                                      (bucket living-room)
                                      (chain garden)
                                      (frog garden)))

(defun objects-at (loc objs obj-locs)
  (labels ((at-loc-p (obj)
             (eq loc (cadr (assoc obj obj-locs)))))
     (remove-if-not #'at-loc-p objs)))
