;; Simple test module.
;; Run via runtests.el.

(define-module testmodule
  :export (somefunction somevariable))

(import-module testm2 :symbols (zzzq))
(import-module testimplicit)
(import-module testimplicit2 :prefix ti2 :symbols ((implicit2 . i2)))

(defvar private 22)

(defvar somevariable (1+ private))

(defun private-function (arg)
  arg)

(defun somefunction ()
  (+ (private-function 0)
     (zzzq)
     (implicit)
     (i2)))

(provide 'testmodule)
