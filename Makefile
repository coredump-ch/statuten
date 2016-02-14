SHELL = bash
LL = latexmk -pdf
FILES = coredump/statuten.pdf
CLEAN = latexmk -C

all: $(FILES)

%.pdf: %.tex $(SRC)
	cd `dirname $<` && $(LL) `basename $<`

clean:
	for f in $(FILES); do cd `dirname $$f`; $(CLEAN); done

.PHONY : clean

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
