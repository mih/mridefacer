PREFIX ?= /usr/local

all:

install: man/mridefacer.1
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	mkdir -p $(DESTDIR)$(PREFIX)/share/mridefacer
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -t $(DESTDIR)$(PREFIX)/bin mridefacer
	install -m 644 man/mridefacer.1 $(DESTDIR)$(PREFIX)/share/man/man1
	install -m 644 -t $(DESTDIR)$(PREFIX)/share/mridefacer data/*

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/mridefacer
	rm -fr $(DESTDIR)$(PREFIX)/share/mridefacer
	rm -f $(DESTDIR)$(PREFIX)/share/man/man1/mridefacer.1*

README.md:
	echo '# mridefacer\nFrom the manpage:\n````\n' > README.md
	./mridefacer --verbose-help  >> README.md
	echo '````\n' >> README.md

man/mridefacer.1:
	mkdir -p man
	help2man --help-option="--verbose-help" --no-info ./mridefacer > $@

clean:
	rm -rf man
