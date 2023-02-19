; CONS CELLS
(cons 'chicken 'cat)
(cons 'chicken ())

; we consed port into a list containing beef and chicken
(cons 'pork '(beef chicken))
(cons 'pork (cons 'beef (cons 'chicken ())))

; car - get first slot
(car '(pork beef chicken))
; crd - get second slot
(cdr '(pork beef chicken))
;cadr - like car and cdr together - returns second item from a list
(cadr '(pork beef chicken))
(car (cdr '(pork beef chicken))
(cdar '((peas carrots tomatoes) (pork beef chicken)))
(cdr (car '((peas carrots tomatoes) (pork beef chicken))))

; third item
(caddr '(pork beef chicken))
(car (cdr (cdr '(pork beef chicken))))
; fourh item
(cadddr '(pork beef chicken cow))

; ------------------
; LISTS
; creats all the cons cells and builds a list at once
; built on top of - cons, car, cdr
(list 'pork 'beef 'chicken)
; an equivalent to
(cons 'pork (cons 'beef (cons 'chicken ())))
; an equivalent to
'(pork beek chicken)

;-------------------
; NESTED LISTS
'(cat (duck bat) ant)
