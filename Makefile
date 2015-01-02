EMACS := /home/tromey/Emacs/install/bin/emacs

all:
	$(EMACS) --batch -f batch-byte-compile module.el

check:
	$(EMACS) --batch -l runtests.el

bc-all:
	$(EMACS) --batch -f batch-byte-compile *.el

clean:
	rm *.elc
