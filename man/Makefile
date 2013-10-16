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
# Makefile.am -- create the Makefile for the manual page directory
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: Makefile.am,v 1.10 2001/05/07 00:07:50 afm Exp $
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
CGIDIR = /cgi-bin/openscep
CGIINSTALLDIR = /usr/local/apache/cgi-bin/openscep
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
PKICLIENTEXE = /usr/local/apache/cgi-bin/pkiclient.exe
RANLIB = ranlib
RPM = 
STRIP = strip
USER = root
VERSION = 0.4.2

man_MANS = scepd.8 scepgrant.8 scepreject.8 derdump.1 				scepconf.1 openscep.cnf.5 crl2ldap.8 dn2xid.8				scep.1 scepclient.1 sceplist.1 scepxid.1 updatecrl.8			createcrl.8 cafingerprint.8

EXTRA_DIST = scepd.8.in scepgrant.8.in scepreject.8.in derdump.1.in		scepconf.1.in openscep.cnf.5.in crl2ldap.8.in dn2xid.8.in		scep.1.in scepclient.1.in sceplist.1.in scepxid.1.in			updatecrl.8.in createcrl.8.in cafingerprint.8.in			$(man_MANS)

mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../include/config.h
CONFIG_CLEAN_FILES = 
man1dir = $(mandir)/man1
man5dir = $(mandir)/man5
man8dir = $(mandir)/man8
MANS = $(man_MANS)

NROFF = nroff
DIST_COMMON =  Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
all: all-redirect
.SUFFIXES:
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu --include-deps man/Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status


install-man1:
	$(mkinstalldirs) $(DESTDIR)$(man1dir)
	@list='$(man1_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst; \
	done

uninstall-man1:
	@list='$(man1_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man1dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man1dir)/$$inst; \
	done

install-man5:
	$(mkinstalldirs) $(DESTDIR)$(man5dir)
	@list='$(man5_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.5*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man5dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man5dir)/$$inst; \
	done

uninstall-man5:
	@list='$(man5_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.5*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man5dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man5dir)/$$inst; \
	done

install-man8:
	$(mkinstalldirs) $(DESTDIR)$(man8dir)
	@list='$(man8_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.8*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man8dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man8dir)/$$inst; \
	done

uninstall-man8:
	@list='$(man8_MANS)'; \
	l2='$(man_MANS)'; for i in $$l2; do \
	  case "$$i" in \
	    *.8*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man8dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man8dir)/$$inst; \
	done
install-man: $(MANS)
	@$(NORMAL_INSTALL)
	$(MAKE) $(AM_MAKEFLAGS) install-man1 install-man5 install-man8
uninstall-man:
	@$(NORMAL_UNINSTALL)
	$(MAKE) $(AM_MAKEFLAGS) uninstall-man1 uninstall-man5 uninstall-man8
tags: TAGS
TAGS:


distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

subdir = man

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
install-exec-am:
install-exec: install-exec-am

install-data-am: install-man
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am: uninstall-man
uninstall: uninstall-am
all-am: Makefile $(MANS)
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(mandir)/man1 $(DESTDIR)$(mandir)/man5 \
		$(DESTDIR)$(mandir)/man8


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

.PHONY: install-man1 uninstall-man1 install-man5 uninstall-man5 \
install-man8 uninstall-man8 install-man uninstall-man tags distdir \
info-am info dvi-am dvi check check-am installcheck-am installcheck \
install-exec-am install-exec install-data-am install-data install-am \
install uninstall-am uninstall all-redirect all-am all installdirs \
mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean


scepd.8:	scepd.8.in ../config.sh
	sh ../config.sh <scepd.8.in >scepd.8

scepgrant.8:	scepgrant.8.in ../config.sh
	sh ../config.sh <scepgrant.8.in >scepgrant.8

scepreject.8:	scepreject.8.in ../config.sh
	sh ../config.sh <scepreject.8.in >scepreject.8

derdump.1:	derdump.1.in ../config.sh
	sh ../config.sh <derdump.1.in >derdump.1

scepconf.1:	scepconf.1.in ../config.sh
	sh ../config.sh <scepconf.1.in >scepconf.1

openscep.cnf.5:	openscep.cnf.5.in ../config.sh
	sh ../config.sh <openscep.cnf.5.in >openscep.cnf.5

crl2ldap.8:	crl2ldap.8.in ../config.sh
	sh ../config.sh <crl2ldap.8.in >crl2ldap.8

dn2xid.8:	dn2xid.8.in ../config.sh
	sh ../config.sh <dn2xid.8.in >dn2xid.8

scep.1:	scep.1.in ../config.sh
	sh ../config.sh <scep.1.in >scep.1

scepclient.1:	scepclient.1.in ../config.sh
	sh ../config.sh <scepclient.1.in >scepclient.1

sceplist.1:	sceplist.1.in ../config.sh
	sh ../config.sh <sceplist.1.in >sceplist.1

scepxid.1:	scepxid.1.in ../config.sh
	sh ../config.sh <scepxid.1.in >scepxid.1

updatecrl.8:	updatecrl.8.in ../config.sh
	sh ../config.sh <updatecrl.8.in >updatecrl.8

createcrl.8:	createcrl.8.in ../config.sh
	sh ../config.sh <createcrl.8.in >createcrl.8

cafingerprint.8:	cafingerprint.8.in ../config.sh
	sh ../config.sh <cafingerprint.8.in >cafingerprint.8

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
