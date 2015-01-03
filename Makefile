EMACS := /home/tromey/Emacs/install/bin/emacs

HERE := $(shell pwd)

all:
	$(EMACS) --batch -f batch-byte-compile module.el

check:
	$(EMACS) --batch -l runtests.el

bc-all:
	$(EMACS) --batch --eval '(push "$(HERE)" load-path)' \
		--eval "(require 'module)" \
		--eval '(byte-recompile-directory "." 0)'

clean:
	-rm *.elc
