# This is the Makefile for mkcd
FILES = (src/mkcd.sh src/rcd.sh)

# Compile all the files to mkcd
all: src/mkcd.sh src/rcd.sh
	touch mkcd
	cat src/mkcd.sh >> mkcd
	cat src/rcd.sh >> mkcd

# Clean up local files
clean:
	rm -f mkcd

# Put the files to the end of ~/.bashrc
userinstall:
	cat mkcd >> ~/.bashrc

# Installs it to ~/.bashrc
install: all userinstall

# Runs the linter
lint: all test

# Uses shell for the linter
test:
	bash mkcd -n

.PHONY: all install clean lint