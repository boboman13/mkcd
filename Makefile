# This is the Makefile for mkcd
FILES = (src/mkcd.sh src/rcd.sh)

all: src/mkcd.sh src/rcd.sh
	touch mkcd
	cat src/mkcd.sh >> mkcd
	cat src/rcd.sh >> mkcd

userinstall:
	cat mkcd >> ~/.bashrc
	
clean:
	rm -f mkcd

install: all userinstall

.PHONY: all install clean