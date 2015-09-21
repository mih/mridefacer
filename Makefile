DESTDIR := /usr/local

all:

install: man/mridefacer.1
	mkdir -p $(DESTDIR)/share/man/man1
	mkdir -p $(DESTDIR)/share/mridefacer
	mkdir -p $(DESTDIR)/bin
	install -t $(DESTDIR)/bin mridefacer
	install -m 644 man/mridefacer.1 $(DESTDIR)/share/man/man1
	install -m 644 -t $(DESTDIR)/share/mridefacer data/*

uninstall:
	rm -f $(DESTDIR)/bin/mridefacer
	rm -fr $(DESTDIR)/share/mridefacer
	rm -f $(DESTDIR)/share/man/man1/mridefacer.1*

README.md:
	echo '# mridefacer\nFrom the manpage:\n````\n' > README.md
	./mridefacer --verbose-help  >> README.md
	echo '````\n' >> README.md

man/mridefacer.1:
	mkdir -p man
	help2man --help-option="--verbose-help" --no-info ./mridefacer > $@

clean:
	rm -rf man
