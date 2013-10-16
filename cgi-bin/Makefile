# Makefile.in generated automatically by automake 1.4-p5 from Makefile.am

# Copyright (C) 1994, 1995-8, 1999, 2001 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

#
# Makefile to build CGI programs used for the openscep system
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: Makefile.am,v 1.4 2001/03/18 23:53:33 afm Exp $
#


SHELL = /bin/sh

srcdir = .
top_srcdir = ..

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/openscep
pkglibdir = $(libdir)/openscep
pkgincludedir = $(includedir)/openscep

top_builddir = ..

ACLOCAL = /home/togu008/scep/openscep-0.4.2/missing aclocal
AUTOCONF = /home/togu008/scep/openscep-0.4.2/missing autoconf
AUTOMAKE = /home/togu008/scep/openscep-0.4.2/missing automake
AUTOHEADER = /home/togu008/scep/openscep-0.4.2/missing autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL} $(AM_INSTALL_PROGRAM_FLAGS)
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_alias = i686-pc-linux
build_triplet = i686-pc-linux
host_alias = i686-pc-linux
host_triplet = i686-pc-linux
target_alias = i686-pc-linux
target_triplet = i686-pc-linux
AS = @AS@
CAGROUP = nogroup
CAOWNER = nobody
CC = gcc
DATE = /bin/date
DLLTOOL = @DLLTOOL@
ECHO = echo
EXEEXT = 
GROUP = staff
HTMLDIR = /
HTMLINSTALLDIR = /usr/local/apache/htdocs
INCLTDL = -I${top_srcdir}/libltdl
LDAPMODIFYCMD = /usr/local/bin/ldapsearch
LDAPSEARCHCMD = /usr/local/bin/ldapsearch
LIBLTDL = ${top_builddir}/libltdl/libltdlc.la
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIBTOOL_DEPS = ./ltmain.sh
LN_S = ln -s
LOG_FACILTY = 
MAKEINFO = makeinfo
MV = /bin/mv
OBJDUMP = @OBJDUMP@
OBJEXT = o
OPENSCEPDIR = ${exec_prefix}/lib/openscep
OPENSSLCMD = /usr/bin/openssl
OPENSSLDIR = /usr/local/ssl
PACKAGE = openscep
PERL = /usr/bin/perl
PKG = 
PKGMK = 
RANLIB = ranlib
RPM = 
STRIP = strip
USER = root
VERSION = 0.4.2

EXTRA_DIST = scep.pl.in pending.pl.in log.pl.in add.pl.in crl.pl.in		granted.pl.in rejected.pl.in revoked.pl.in


CGIDIR = /cgi-bin/openscep
PKICLIENTEXE = /usr/local/apache/cgi-bin/pkiclient.exe
CGIINSTALLDIR = /usr/local/apache/cgi-bin/openscep

CGIS = pending.pl log.pl add.pl crl.pl granted.pl revoked.pl rejected.pl
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../include/config.h
CONFIG_CLEAN_FILES = 
DIST_COMMON =  Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
all: all-redirect
.SUFFIXES:
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu --include-deps cgi-bin/Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status

tags: TAGS
TAGS:


distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

subdir = cgi-bin

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done
info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
check: check-am
installcheck-am:
installcheck: installcheck-am
install-exec-am: install-exec-local
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am:
uninstall: uninstall-am
all-am: Makefile all-local
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-generic clean-am
	-rm -f libtool

distclean: distclean-am

maintainer-clean-am:  maintainer-clean-generic distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am

.PHONY: tags distdir info-am info dvi-am dvi check check-am \
installcheck-am installcheck install-exec-local install-exec-am \
install-exec install-data-am install-data install-am install \
uninstall-am uninstall all-local all-redirect all-am all installdirs \
mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean


all-local: $(CGIS) scep.pl

scep.pl:	scep.pl.in ../config.sh
	sh ../config.sh scep.pl.in >scep.pl
pending.pl:	pending.pl.in ../config.sh
	sh ../config.sh pending.pl.in >pending.pl
log.pl:	log.pl.in ../config.sh
	sh ../config.sh log.pl.in >log.pl
add.pl:	add.pl.in ../config.sh
	sh ../config.sh add.pl.in >add.pl
crl.pl:	crl.pl.in ../config.sh
	sh ../config.sh crl.pl.in >crl.pl
granted.pl:	granted.pl.in ../config.sh
	sh ../config.sh granted.pl.in >granted.pl
rejected.pl:	rejected.pl.in ../config.sh
	sh ../config.sh rejected.pl.in >rejected.pl
revoked.pl:	revoked.pl.in ../config.sh
	sh ../config.sh revoked.pl.in >revoked.pl

install-exec-local:	$(CGIS)
	if [ ! -d $(CGIINSTALLDIR) ];					\
	then								\
		mkdir -p $(CGIINSTALLDIR);				\
	fi
	for c in $(CGIS);						\
	do 								\
		cp $${c} $(CGIINSTALLDIR);  				\
		chmod 755 $(CGIINSTALLDIR)/$${c};			\
	done
	d=`dirname $(PKICLIENTEXE)`;					\
	if [ ! -d "$${d}" ];						\
	then								\
		mkdir -p $${d};						\
	fi
	cp scep.pl $(PKICLIENTEXE)
	chmod 755 $(PKICLIENTEXE)

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
