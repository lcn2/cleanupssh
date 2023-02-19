#!/usr/bin/env make
#
# cleanupssh - cleanup a .ssh directory, fix permission and missing sub-dirs

SHELL= bash
INSTALL= install
DESTDIR= /usr/local/sbin
TARGETS= cleanupssh known_hosts_cleanup

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	${INSTALL} -m 0555 ${TARGETS} ${DESTDIR}
