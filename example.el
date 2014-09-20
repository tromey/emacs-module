
(require 'something-else)
(require '3rd-thing)

(define-module example public-func public-var)
(import-module something-else)		; suppose this exports efun
(import-module 3rd-thing
	       other-func		; pick a symbol
	       (special-function my-special-func)
					; rename it locally to
					; my-special-func
	       )
(import-module cl caaar)		; implicit module

(defvar public-var nil
  "Defines example-public-var.")

(defvar internal-var nil
  "Defines example--internal-var.")

(defun public-func (arg)
  (efun					; really something-else-efun
   (other-func				; really 3rd-thing-other-func
    (my-special-func			; really 3rd-thing-special-function
     arg))))
