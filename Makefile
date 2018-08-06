#!/bin/make
# @(#)Makefile	1.2 04 May 1995 02:06:57
#
# cleanupssh - cleanup a .ssh directory, fix permission and missing sub-dirs

SHELL= /bin/bash

TOPNAME= sbin
INSTALL= install

DESTDIR= /usr/global/sbin

TARGETS= cleanupssh

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	${INSTALL} -m 0555 cleanupssh ${DESTDIR}
