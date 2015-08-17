#!/bin/make
# @(#)Makefile	1.2 04 May 1995 02:06:57
#
# syncsshkeys.sh - ensure that /etc/ssh and ~root/.ssh are synced with ssh key backup

SHELL= /bin/bash
CP= cp
RM= rm

TOPNAME= sbin
INSTALL= install
HOSTNAME_PROG= hostname

DESTDIR= /usr/global/sbin

TARGETS= syncsshkeys

all: ${TARGETS}

configure:

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean

install: all
	${INSTALL} -m 0555 syncsshkeys ${DESTDIR}
