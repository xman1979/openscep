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
# Makefile.am -- generate Makefile to build scep client and other client 
#                oriented auxiliary files
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: Makefile.am,v 1.13 2002/02/24 21:40:01 afm Exp $
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
CAOWNER = nobody
CC = gcc
CGIDIR = /cgi-bin/openscep
CGIINSTALLDIR = /usr/local/apache/cgi-bin/openscep
DATE = /bin/date
DLLTOOL = @DLLTOOL@
ECHO = echo
EXEEXT = 
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
VERSION = 0.4.2

EXTRA_DIST = README scepkey.in scepclient.in test1.key test2.key

GROUP = staff
USER = root
CAGROUP = nogroup
CAUSER = @CAUSER@

CACERT = ${exec_prefix}/lib/openscep/cacert.pem

bin_PROGRAMS = scep scepxid

scep_SOURCES = scep.c
scepxid_SOURCES = scepxid.c

SCRIPT = scepkey scepclient

LIBS = -ldl  -lldap -llber -L/usr/local/ssl/lib -lssl -lcrypto -lresolv -lnsl 

LDADD = ../lib/libscep.la

INCLUDES = $(INCLTDL) -I$(top_srcdir)/include -I$(OPENSSLDIR)/include
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../include/config.h
CONFIG_CLEAN_FILES = 
bin_PROGRAMS =  scep$(EXEEXT) scepxid$(EXEEXT)
PROGRAMS =  $(bin_PROGRAMS)


DEFS = -DHAVE_CONFIG_H -I. -I$(srcdir) -I../include
CPPFLAGS = 
LDFLAGS = 
scep_OBJECTS =  scep.$(OBJEXT)
scep_LDADD = $(LDADD)
scep_DEPENDENCIES =  ../lib/libscep.la
scep_LDFLAGS = 
scepxid_OBJECTS =  scepxid.$(OBJEXT)
scepxid_LDADD = $(LDADD)
scepxid_DEPENDENCIES =  ../lib/libscep.la
scepxid_LDFLAGS = 
CFLAGS = -g -O2
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --mode=compile $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
DIST_COMMON =  README Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
SOURCES = $(scep_SOURCES) $(scepxid_SOURCES)
OBJECTS = $(scep_OBJECTS) $(scepxid_OBJECTS)

all: all-redirect
.SUFFIXES:
.SUFFIXES: .S .c .lo .o .obj .s
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu --include-deps scep/Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status


mostlyclean-binPROGRAMS:

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)

distclean-binPROGRAMS:

maintainer-clean-binPROGRAMS:

install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`"; \
	    $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	list='$(bin_PROGRAMS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	done

.c.o:
	$(COMPILE) -c $<

# FIXME: We should only use cygpath when building on Windows,
# and only if it is available.
.c.obj:
	$(COMPILE) -c `cygpath -w $<`

.s.o:
	$(COMPILE) -c $<

.S.o:
	$(COMPILE) -c $<

mostlyclean-compile:
	-rm -f *.o core *.core
	-rm -f *.$(OBJEXT)

clean-compile:

distclean-compile:
	-rm -f *.tab.c

maintainer-clean-compile:

.c.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

.s.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

.S.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:

maintainer-clean-libtool:

scep$(EXEEXT): $(scep_OBJECTS) $(scep_DEPENDENCIES)
	@rm -f scep$(EXEEXT)
	$(LINK) $(scep_LDFLAGS) $(scep_OBJECTS) $(scep_LDADD) $(LIBS)

scepxid$(EXEEXT): $(scepxid_OBJECTS) $(scepxid_DEPENDENCIES)
	@rm -f scepxid$(EXEEXT)
	$(LINK) $(scepxid_LDFLAGS) $(scepxid_OBJECTS) $(scepxid_LDADD) $(LIBS)

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP)
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	here=`pwd` && cd $(srcdir) \
	  && mkid -f$$here/ID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$unique$(LISP)$$tags" \
	  || (cd $(srcdir) && etags $(ETAGS_ARGS) $$tags  $$unique $(LISP) -o $$here/TAGS)

mostlyclean-tags:

clean-tags:

distclean-tags:
	-rm -f TAGS ID

maintainer-clean-tags:

distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

subdir = scep

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
scep.o: scep.c ../include/config.h ../include/init.h ../include/scep.h \
	../include/isasu.h ../include/payload.h ../include/selfsigned.h \
	../include/createreq.h ../include/fingerprint.h \
	../include/http.h ../include/encode.h ../include/decode.h \
	../include/missl.h ../include/scepldap.h
scepxid.o: scepxid.c ../include/config.h ../include/init.h \
	../include/scep.h ../include/isasu.h ../include/payload.h \
	../include/fingerprint.h ../include/missl.h

info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
check: check-am
installcheck-am:
installcheck: installcheck-am
install-exec-am: install-binPROGRAMS install-exec-local
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am: uninstall-binPROGRAMS
uninstall: uninstall-am
all-am: Makefile $(PROGRAMS) all-local
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(bindir)


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-binPROGRAMS mostlyclean-compile \
		mostlyclean-libtool mostlyclean-tags \
		mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-binPROGRAMS clean-compile clean-libtool clean-tags \
		clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-binPROGRAMS distclean-compile distclean-libtool \
		distclean-tags distclean-generic clean-am
	-rm -f libtool

distclean: distclean-am

maintainer-clean-am:  maintainer-clean-binPROGRAMS \
		maintainer-clean-compile maintainer-clean-libtool \
		maintainer-clean-tags maintainer-clean-generic \
		distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am

.PHONY: mostlyclean-binPROGRAMS distclean-binPROGRAMS clean-binPROGRAMS \
maintainer-clean-binPROGRAMS uninstall-binPROGRAMS install-binPROGRAMS \
mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile mostlyclean-libtool distclean-libtool \
clean-libtool maintainer-clean-libtool tags mostlyclean-tags \
distclean-tags clean-tags maintainer-clean-tags distdir info-am info \
dvi-am dvi check check-am installcheck-am installcheck \
install-exec-local install-exec-am install-exec install-data-am \
install-data install-am install uninstall-am uninstall all-local \
all-redirect all-am all installdirs mostlyclean-generic \
distclean-generic clean-generic maintainer-clean-generic clean \
mostlyclean distclean maintainer-clean


all-local:	scepkey scepclient

scepkey:	../config.sh scepkey.in
	sh ../config.sh <scepkey.in >scepkey
scepclient:	../config.sh scepclient.in
	sh ../config.sh <scepclient.in >scepclient

install-exec-local:	$(SCRIPT)
	for f in $(SCRIPT); do						\
		../shtool install -o $(USER) -g $(GROUP) -m 0755 $${f} 	\
			${bindir} ;					\
	done

# test1	creates a version1 request from a valid X509 request. Automatic
#	enrollment can only work if a challenge password attribute is 
#	included with the request
test1:	scep test1.key test1.req
	./scep -d -k test1.key -r test1.req				\
		-c $(CACERT) 
test1-poll:	scep test1.key test1.req
	./scep -d -p -k test1.key -r test1.req				\
		-c $(CACERT) 

# test2	creates a version2 request from a valid X509 request for the SCEP
#	client and an end entity request. The challenge password for auto-
#	matic enrollment must be included in the end entity request.
test2:	scep test1.key test1.req test2.req
	./scep -d -k test1.key -r test1.req				\
		-c $(CACERT)						\
		-2 -e test2.req -q cvurg3nfnbvbt75
test2-poll:	scep test1.key test1.req test2.req
	./scep -d -p -k test1.key -r test1.req				\
		-c $(CACERT)						\
		-2 -e test2.req -q cvurg3nfnbvbt75

# test3	creates a version2 request from a Netscape SPKI request, distinguished
#	name components are converted to attributes in the payload.
#	For automatic enrollment, the challenge must be set to the
#	challenge password
test3:	scep test1.key test1.req test3.spki
	./scep -d -k test1.key -r test1.req				\
		-c $(CACERT)						\
		-2 -a test3.spki -q cvurg3nfnbvbt75			\
		"CN=Lukas Mueller,O=Othello,C=CH"
test3-poll:	scep test1.key test1.req test3.spki
	./scep -d -p -k test1.key -r test1.req				\
		-c $(CACERT)						\
		-2 -a test3.spki -q cvurg3nfnbvbt75			\
		"CN=Lukas Mueller,O=Othello,C=CH"

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
