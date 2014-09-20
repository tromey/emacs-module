;; Run the tests.  Invoke as:
;;   emacs --script runtests.el

(push (expand-file-name (file-name-directory load-file-name)) load-path)

(require 'ert)
(require 'module)
(require 'testmodule)

(ert-deftest module-tests ()
  (should-not (boundp 'private))
  (should (boundp 'testmodule--private))
  (should-not (boundp 'somevariable))
  (should (boundp 'testmodule-somevariable))
  (should-not (fboundp 'somefunction))
  (should (fboundp 'testmodule-somefunction))
  (should-not (fboundp 'private-function))
  (should (fboundp 'testmodule--private-function))
  (should (boundp 'testmodule))
  (should (module-p testmodule))
  (should (eq (testmodule-somefunction) 0)))

(ert-run-tests-batch-and-exit)
