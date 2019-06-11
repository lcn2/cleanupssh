#!/bin/make
# @(#)Makefile	1.2 04 May 1995 02:06:57
#
# cleanupssh - cleanup a .ssh directory, fix permission and missing sub-dirs

SHELL= /bin/bash

TOPNAME= sbin
INSTALL= install

DESTDIR= /usr/global/sbin
SPECIAL_TOOLDIR= ~chongo/dot/tool
SPECIAL_TOOLDIR_USER= chongo

TARGETS= cleanupssh known_hosts_cleanup

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	@if [[ ! `which python3 2>/dev/null` ]]; then \
	    echo "known_hosts_cleanup requires python3 executable, python3 not found" 1>&2; \
	    exit 1; \
	fi
	${INSTALL} -m 0555 ${TARGETS} ${DESTDIR}
	@-if [[ -d ${SPECIAL_TOOLDIR} ]]; then \
	    echo ${INSTALL} -m 0555 -o ${SPECIAL_TOOLDIR_USER} ${TARGETS} ${SPECIAL_TOOLDIR}; \
	    ${INSTALL} -m 0555 -o ${SPECIAL_TOOLDIR_USER} ${TARGETS} ${SPECIAL_TOOLDIR}; \
	fi
