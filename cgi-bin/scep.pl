#! /usr/bin/perl
#
# Generic CGI wrapper for SCEP requests. Install this in the CGI directory
# of the web server that will server as the SCEP server.
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: scep.pl.in,v 1.8 2001/04/04 23:36:33 afm Exp $
#
$openscepdir = "/usr/local/lib/openscep";
$cacert = $openscepdir."/cacert.pem";
$pkioperation = "/usr/local/sbin/scepd";
$scepconf = "/usr/local/bin/scepconf";

use CGI qw(param);

$operation = param("operation");
$message = param("message");

# read through the openscep.cnf configuration file and extrat ldap parameters
sub	scepconf {
	local($cmd) = "${scepconf} ". join(' ', @_)." 2>/dev/null |";
	open(CONF, $cmd) || die "cannot open scepconf: $!\n";
	$value = <CONF>;
	chop $value;
	close(CONF);
	return $value;
}
$openssl = &scepconf("scepd", "openssl");

$old_fh = select(STDOUT);
$| = 1;
select($old_fh);

if (($operation eq "GetCACert") || ($operation eq "GetCACertChain")) {
	printf("Content-Type: application/x-x509-ca-cert\n\n");
	system("$openssl x509 -in $cacert -outform DER");
} elsif ($operation eq "PKIOperation") {
	open(PKI, "|$pkioperation -d -f $openscepdir/openscep.cnf");
	print PKI $message;
	close(PKI);
}

exit (0);
