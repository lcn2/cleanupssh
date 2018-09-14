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
SPECIAL_TOOLDIR_GROUP= chongo

TARGETS= cleanupssh

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	${INSTALL} -m 0555 cleanupssh ${DESTDIR}
	@-if [[ -d ${SPECIAL_TOOLDIR} ]]; then \
	    echo ${INSTALL} -m 0555 -o ${SPECIAL_TOOLDIR_USER} -g ${SPECIAL_TOOLDIR_GROUP} cleanupssh ${SPECIAL_TOOLDIR}; \
	    ${INSTALL} -m 0555 -o ${SPECIAL_TOOLDIR_USER} -g ${SPECIAL_TOOLDIR_GROUP} cleanupssh ${SPECIAL_TOOLDIR}; \
	fi
