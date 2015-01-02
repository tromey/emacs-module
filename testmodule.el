;; Simple test module.
;; Run via runtests.el.

(define-module testmodule
  :export (somefunction somevariable))

(import-module testm2 :symbols (zzzq))
(import-module testimplicit)

(defvar private 22)

(defvar somevariable (1+ private))

(defun private-function (arg)
  arg)

(defun somefunction ()
  (+ (private-function 0)
     (zzzq)
     (implicit)))

(provide 'testmodule)
