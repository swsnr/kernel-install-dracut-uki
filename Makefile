PREFIX = usr
DESTDIR =

HOOK = 50-dracut-uki.install

INSTALL = install
SHFMT = shfmt
SHELLCHECK = shellcheck

.PHONY: install
install:
	$(INSTALL) -Dm755 -t $(DESTDIR)/$(PREFIX)/lib/kernel/install.d $(HOOK)

.PHONY: check
check:
	$(SHFMT) -i 4 -l -d $(HOOK)
	$(SHELLCHECK) -S style $(HOOK)
