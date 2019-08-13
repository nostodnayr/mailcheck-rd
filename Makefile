all: mailcheck

debug: mailcheck.c netrc.c netrc.h socket.c
	$(CC) -Wall -O0 mailcheck.c netrc.c socket.c -g -o mailcheck

mailcheck: mailcheck.c netrc.c netrc.h socket.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -Wall -O2 mailcheck.c netrc.c socket.c -o mailcheck

install: mailcheck
# install and overwrite mailcheck from package distribution
	install mailcheck $(prefix)/usr/bin
# but don't bother the installed rc, because we presume it's been installed by apt
#	install -m 644 mailcheckrc $(prefix)/etc

distclean: clean

clean:
	rm -f mailcheck *~
