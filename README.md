# mailcheck-rd
Personalisation of Debian’s mailcheck

**Use at your own risk**

*I’ve only put in enough work to make this functional for me.*

*It has not been tested with mbox or POP3/IMAP accounts, only Maildir.*

No paths option
---------------

Use `-n` to get *very* brief output:

    1 new message.

or

    1 new message and 2 saved messages.

Note: the `-n` and `-b` options are mutually-exclusive.

Installation
------------

Run `make` as usual.

Note: Using `make install` doesn't install the mailcheckrc file or the man pages. It only copies the binary to (usually) /usr/bin/mailcheck. **This will overwrite your original copy of mailcheck if installed via a package.**
