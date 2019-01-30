prefix = /usr/local

install: basiliskiivm man/basiliskiivm.1
	install -m755 basiliskiivm $(prefix)/bin
	install man/basiliskiivm.1 $(prefix)/share/man/man1
