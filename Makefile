MAIN = main

.PHONY: all pdf clean distclean

all: pdf

pdf:
	latexmk $(MAIN).tex

clean:
	latexmk -c $(MAIN).tex

distclean:
	latexmk -C $(MAIN).tex
