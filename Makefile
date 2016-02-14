SHELL = bash
LL = latexmk -pdf
FILES = coredump/statuten.pdf cccch/statuten.pdf
CLEAN = latexmk -C

TOP ?= $(shell pwd)

all: $(FILES)

%.pdf: %.tex $(SRC)
	cd $(TOP)/`dirname $<` && $(LL) `basename $<`

clean:
	for f in $(FILES); do cd $(TOP)/`dirname $$f`; $(CLEAN); done

.PHONY : clean

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
