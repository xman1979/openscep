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
# Makefile.am -- generate the Makefile to build the main scep process
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: Makefile.am,v 1.9 2002/01/11 17:07:49 afm Exp $
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
OPENSSLCMD = /usr/bin/openssl
PACKAGE = openscep
PERL = /usr/bin/perl
PKG = 
PKGMK = 
PKICLIENTEXE = /usr/local/apache/cgi-bin/pkiclient.exe
RANLIB = ranlib
RPM = 
STRIP = strip
VERSION = 0.4.2

EXTRA_DIST = scepgrant.in scepreject.in updatecrl.in createcrl.in
SCRIPT = scepgrant scepreject updatecrl createcrl

bin_PROGRAMS = derdump scepconf sceplist
sbin_PROGRAMS = scepd crl2ldap dn2xid cafingerprint

derdump_SOURCES = derdump.c
scepconf_SOURCES = scepconf.c

scepd_SOURCES = scepd.c
crl2ldap_SOURCES = crl2ldap.c
dn2xid_SOURCES = dn2xid.c
sceplist_SOURCES = sceplist.c
cafingerprint_SOURCES = cafingerprint.c

OPENSSLDIR = /usr/local/ssl
OPENSCEPDIR = ${exec_prefix}/lib/openscep
USER = root
GROUP = staff
CAUSER = @CAUSER@
CAGROUP = nogroup

LIBS = -ldl  -lldap -llber -L/usr/local/ssl/lib -lssl -lcrypto -lresolv -lnsl 

LDADD = ../lib/libscep.la
LDFLAGS = -R$(libdir)

CPPFLAGS = -DOPENSCEPDIR=\"$(OPENSCEPDIR)\"

INCLUDES = $(INCLTDL) -I$(top_srcdir)/include -I$(OPENSSLDIR)/include
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../include/config.h
CONFIG_CLEAN_FILES = 
bin_PROGRAMS =  derdump$(EXEEXT) scepconf$(EXEEXT) sceplist$(EXEEXT)
sbin_PROGRAMS =  scepd$(EXEEXT) crl2ldap$(EXEEXT) dn2xid$(EXEEXT) \
cafingerprint$(EXEEXT)
PROGRAMS =  $(bin_PROGRAMS) $(sbin_PROGRAMS)


DEFS = -DHAVE_CONFIG_H -I. -I$(srcdir) -I../include
derdump_OBJECTS =  derdump.$(OBJEXT)
derdump_LDADD = $(LDADD)
derdump_DEPENDENCIES =  ../lib/libscep.la
derdump_LDFLAGS = 
scepconf_OBJECTS =  scepconf.$(OBJEXT)
scepconf_LDADD = $(LDADD)
scepconf_DEPENDENCIES =  ../lib/libscep.la
scepconf_LDFLAGS = 
sceplist_OBJECTS =  sceplist.$(OBJEXT)
sceplist_LDADD = $(LDADD)
sceplist_DEPENDENCIES =  ../lib/libscep.la
sceplist_LDFLAGS = 
scepd_OBJECTS =  scepd.$(OBJEXT)
scepd_LDADD = $(LDADD)
scepd_DEPENDENCIES =  ../lib/libscep.la
scepd_LDFLAGS = 
crl2ldap_OBJECTS =  crl2ldap.$(OBJEXT)
crl2ldap_LDADD = $(LDADD)
crl2ldap_DEPENDENCIES =  ../lib/libscep.la
crl2ldap_LDFLAGS = 
dn2xid_OBJECTS =  dn2xid.$(OBJEXT)
dn2xid_LDADD = $(LDADD)
dn2xid_DEPENDENCIES =  ../lib/libscep.la
dn2xid_LDFLAGS = 
cafingerprint_OBJECTS =  cafingerprint.$(OBJEXT)
cafingerprint_LDADD = $(LDADD)
cafingerprint_DEPENDENCIES =  ../lib/libscep.la
cafingerprint_LDFLAGS = 
CFLAGS = -g -O2
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --mode=compile $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
DIST_COMMON =  Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
SOURCES = $(derdump_SOURCES) $(scepconf_SOURCES) $(sceplist_SOURCES) $(scepd_SOURCES) $(crl2ldap_SOURCES) $(dn2xid_SOURCES) $(cafingerprint_SOURCES)
OBJECTS = $(derdump_OBJECTS) $(scepconf_OBJECTS) $(sceplist_OBJECTS) $(scepd_OBJECTS) $(crl2ldap_OBJECTS) $(dn2xid_OBJECTS) $(cafingerprint_OBJECTS)

all: all-redirect
.SUFFIXES:
.SUFFIXES: .S .c .lo .o .obj .s
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu --include-deps scepd/Makefile

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

mostlyclean-sbinPROGRAMS:

clean-sbinPROGRAMS:
	-test -z "$(sbin_PROGRAMS)" || rm -f $(sbin_PROGRAMS)

distclean-sbinPROGRAMS:

maintainer-clean-sbinPROGRAMS:

install-sbinPROGRAMS: $(sbin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(sbindir)
	@list='$(sbin_PROGRAMS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(sbindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`"; \
	    $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(sbindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	  else :; fi; \
	done

uninstall-sbinPROGRAMS:
	@$(NORMAL_UNINSTALL)
	list='$(sbin_PROGRAMS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(sbindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
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

derdump$(EXEEXT): $(derdump_OBJECTS) $(derdump_DEPENDENCIES)
	@rm -f derdump$(EXEEXT)
	$(LINK) $(derdump_LDFLAGS) $(derdump_OBJECTS) $(derdump_LDADD) $(LIBS)

scepconf$(EXEEXT): $(scepconf_OBJECTS) $(scepconf_DEPENDENCIES)
	@rm -f scepconf$(EXEEXT)
	$(LINK) $(scepconf_LDFLAGS) $(scepconf_OBJECTS) $(scepconf_LDADD) $(LIBS)

sceplist$(EXEEXT): $(sceplist_OBJECTS) $(sceplist_DEPENDENCIES)
	@rm -f sceplist$(EXEEXT)
	$(LINK) $(sceplist_LDFLAGS) $(sceplist_OBJECTS) $(sceplist_LDADD) $(LIBS)

scepd$(EXEEXT): $(scepd_OBJECTS) $(scepd_DEPENDENCIES)
	@rm -f scepd$(EXEEXT)
	$(LINK) $(scepd_LDFLAGS) $(scepd_OBJECTS) $(scepd_LDADD) $(LIBS)

crl2ldap$(EXEEXT): $(crl2ldap_OBJECTS) $(crl2ldap_DEPENDENCIES)
	@rm -f crl2ldap$(EXEEXT)
	$(LINK) $(crl2ldap_LDFLAGS) $(crl2ldap_OBJECTS) $(crl2ldap_LDADD) $(LIBS)

dn2xid$(EXEEXT): $(dn2xid_OBJECTS) $(dn2xid_DEPENDENCIES)
	@rm -f dn2xid$(EXEEXT)
	$(LINK) $(dn2xid_LDFLAGS) $(dn2xid_OBJECTS) $(dn2xid_LDADD) $(LIBS)

cafingerprint$(EXEEXT): $(cafingerprint_OBJECTS) $(cafingerprint_DEPENDENCIES)
	@rm -f cafingerprint$(EXEEXT)
	$(LINK) $(cafingerprint_LDFLAGS) $(cafingerprint_OBJECTS) $(cafingerprint_LDADD) $(LIBS)

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

subdir = scepd

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
cafingerprint.o: cafingerprint.c ../include/init.h ../include/scep.h \
	../include/isasu.h ../include/payload.h
crl2ldap.o: crl2ldap.c
derdump.o: derdump.c ../include/init.h ../include/scep.h \
	../include/isasu.h ../include/payload.h \
	../include/openscep_vers.h
dn2xid.o: dn2xid.c ../include/fingerprint.h
scepconf.o: scepconf.c ../include/config.h
scepd.o: scepd.c ../include/config.h ../include/scep.h \
	../include/isasu.h ../include/payload.h ../include/init.h \
	../include/scepldap.h ../include/decode.h ../include/encode.h \
	../include/getcert.h ../include/getcrl.h \
	../include/getcertinitial.h ../include/pkcsreq.h \
	../include/certrep.h ../include/proxy.h ../include/v2request.h
sceplist.o: sceplist.c ../include/config.h ../include/scep.h \
	../include/isasu.h ../include/payload.h ../include/init.h

info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
check: check-am
installcheck-am:
installcheck: installcheck-am
install-exec-am: install-binPROGRAMS install-sbinPROGRAMS \
		install-exec-local
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am: uninstall-binPROGRAMS uninstall-sbinPROGRAMS
uninstall: uninstall-am
all-am: Makefile $(PROGRAMS) all-local
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(bindir) $(DESTDIR)$(sbindir)


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-binPROGRAMS mostlyclean-sbinPROGRAMS \
		mostlyclean-compile mostlyclean-libtool \
		mostlyclean-tags mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-binPROGRAMS clean-sbinPROGRAMS clean-compile \
		clean-libtool clean-tags clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-binPROGRAMS distclean-sbinPROGRAMS \
		distclean-compile distclean-libtool distclean-tags \
		distclean-generic clean-am
	-rm -f libtool

distclean: distclean-am

maintainer-clean-am:  maintainer-clean-binPROGRAMS \
		maintainer-clean-sbinPROGRAMS maintainer-clean-compile \
		maintainer-clean-libtool maintainer-clean-tags \
		maintainer-clean-generic distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am

.PHONY: mostlyclean-binPROGRAMS distclean-binPROGRAMS clean-binPROGRAMS \
maintainer-clean-binPROGRAMS uninstall-binPROGRAMS install-binPROGRAMS \
mostlyclean-sbinPROGRAMS distclean-sbinPROGRAMS clean-sbinPROGRAMS \
maintainer-clean-sbinPROGRAMS uninstall-sbinPROGRAMS \
install-sbinPROGRAMS mostlyclean-compile distclean-compile \
clean-compile maintainer-clean-compile mostlyclean-libtool \
distclean-libtool clean-libtool maintainer-clean-libtool tags \
mostlyclean-tags distclean-tags clean-tags maintainer-clean-tags \
distdir info-am info dvi-am dvi check check-am installcheck-am \
installcheck install-exec-local install-exec-am install-exec \
install-data-am install-data install-am install uninstall-am uninstall \
all-local all-redirect all-am all installdirs mostlyclean-generic \
distclean-generic clean-generic maintainer-clean-generic clean \
mostlyclean distclean maintainer-clean


all-local:	scepgrant scepreject updatecrl createcrl

scepgrant:	scepgrant.in ../config.sh
	sh ../config.sh <scepgrant.in >scepgrant
scepreject:	scepreject.in ../config.sh
	sh ../config.sh <scepreject.in >scepreject
updatecrl:	updatecrl.in ../config.sh
	sh ../config.sh <updatecrl.in >updatecrl
createcrl:	createcrl.in ../config.sh
	sh ../config.sh <createcrl.in >createcrl

install-exec-local:	$(SCRIPT)
	for f in $(SCRIPT); do						\
		../shtool install -o $(USER) -g $(GROUP) -m 0755 $${f} 	\
			${sbindir} ;					\
	done

test:	scepd
	./scepd -d -f `pwd`/../openssl/openscep.cnf

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
