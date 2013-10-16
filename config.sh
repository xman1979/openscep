#
# Substitute the Variables from the configure script in the perl scripts
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: config.sh.in,v 1.6 2002/02/19 23:40:04 afm Exp $
#
prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
sbindir=${exec_prefix}/sbin
libdir=${exec_prefix}/lib
openssldir=/usr/local/ssl
openscepdir=${exec_prefix}/lib/openscep
htmldir=/
htmlinstalldir=/usr/local/apache/htdocs
cgidir=/cgi-bin/openscep
cgiinstalldir=/usr/local/apache/cgi-bin/openscep
version=0.4.2
date=/bin/date
perl=/usr/bin/perl
caowner=nobody
cagroup=nogroup
mv=/bin/mv
opensslcmd=/usr/bin/openssl
ldapsearchcmd=/usr/local/bin/ldapsearch
ldapmodifycmd=/usr/local/bin/ldapsearch


BINDIR=`echo ${bindir} | sed -e 's/\\//\\\\\\//g'`
SBINDIR=`echo ${sbindir} | sed -e 's/\\//\\\\\\//g'`
LIBDIR=`echo ${libdir} | sed -e 's/\\//\\\\\\//g'`
OPENSSLDIR=`echo ${openssldir} | sed -e 's/\\//\\\\\\//g'`
OPENSCEPDIR=`echo ${openscepdir} | sed -e 's/\\//\\\\\\//g'`
HTMLDIR=`echo ${htmldir} | sed -e 's/\\//\\\\\\//g'`
HTMLINSTALLDIR=`echo ${htmlinstalldir} | sed -e 's/\\//\\\\\\//g'`
CGIDIR=`echo ${cgidir} | sed -e 's/\\//\\\\\\//g'`
CGIINSTALLDIR=`echo ${cgiinstalldir} | sed -e 's/\\//\\\\\\//g'`
PERL=`echo ${perl} | sed -e 's/\\//\\\\\\//g'`
MV=`echo ${mv} | sed -e 's/\\//\\\\\\//g'`
OPENSSLCMD=`echo ${opensslcmd} | sed -e 's/\\//\\\\\\//g'`
LDAPSEARCHCMD=`echo ${ldapsearchcmd} | sed -e 's/\\//\\\\\\//g'`
LDAPMODIFYCMD=`echo ${ldapmodifycmd} | sed -e 's/\\//\\\\\\//g'`
DATE="`${date} +%D|sed -e 's:/:\\\/:g'`"

sed 	-e 's/SBINDIR/'"${SBINDIR}"'/g'					\
 	-e 's/BINDIR/'"${BINDIR}"'/g'					\
	-e 's/LIBDIR/'"${LIBDIR}"'/g'					\
	-e 's/OPENSSLDIR/'"${OPENSSLDIR}"'/g'				\
	-e 's/OPENSCEPDIR/'"${OPENSCEPDIR}"'/g'				\
	-e 's/HTMLDIR/'"${HTMLDIR}"'/g'					\
	-e 's/HTMLINSTALLDIR/'"${HTMLINSTALLDIR}"'/g'			\
	-e 's/CGIDIR/'"${CGIDIR}"'/g'					\
	-e 's/CGIINSTALLDIR/'"${CGIINSTALLDIR}"'/g'			\
	-e 's/VeRsIoN/'"${version}"'/g'					\
	-e 's/DaTe/'"${DATE}"'/g'					\
	-e 's/PERL/'"${PERL}"'/g'					\
	-e 's/CAOWNER/'"${caowner}"'/g'					\
	-e 's/CAGROUP/'"${cagroup}"'/g'					\
	-e 's/MV/'"${MV}"'/g'						\
	-e 's/OPENSSLCMD/'"${OPENSSLCMD}"'/g'				\
	-e 's/LDAPSEARCHCMD/'"${LDAPSEARCHCMD}"'/g'			\
	-e 's/LDAPMODIFYCMD/'"${LDAPMODIFYCMD}"'/g'			\
	"$@"

exit 0
