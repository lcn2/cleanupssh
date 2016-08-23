#!/bin/make
# @(#)Makefile	1.2 04 May 1995 02:06:57
#
# syncsshkeys - ensure that /etc/ssh and ~root/.ssh are synced with ssh key backup

SHELL= /bin/bash

TOPNAME= sbin
INSTALL= install

DESTDIR= /usr/global/sbin

TARGETS= syncsshkeys cleanupssh

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	${INSTALL} -m 0555 syncsshkeys ${DESTDIR}
	${INSTALL} -m 0555 cleanupssh ${DESTDIR}
