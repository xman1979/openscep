#! /usr/bin/perl
#
# crl.pl CGI-Script to administer the Certificate revocation list
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: crl.pl.in,v 1.9 2002/01/11 08:22:41 afm Exp $
#
$libdir = "/usr/local/lib";
$sbindir = "/usr/local/sbin";
$bindir = "/usr/local/bin";
$openscepdir = "/usr/local/lib/openscep";
$cacert = $openscepdir."/cacert.pem";
$crlfile = $openscepdir."/crl.pem";
$pendingdir = $openscepdir."/pending";
$granteddir = $openscepdir."/granted";
$rejecteddir = $openscepdir."/rejected";
$revokeddir = $openscepdir."/revoked";

$scepgrant = $sbindir."/scepgrant";
$scepreject = $sbindir."/scepreject";
$dn2xid = $sbindir."/dn2xid";
$updatecrl = $sbindir."/updatecrl";

$scepconf = $bindir."/scepconf";

# read through the openscep.cnf configuration file and extrat ldap parameters
sub	scepconf {
	local($cmd) = "${scepconf} ". join(' ', @_)." 2>/dev/null |";
	open(CONF, $cmd) || die "cannot open scepconf: $!\n";
	$value = <CONF>;
	chop $value;
	close(CONF);
	return $value;
}

$ldapsearch = &scepconf("ldap", "ldapsearch");
$ldaphost = &scepconf("ldap", "ldaphost");
$ldapport = &scepconf("ldap", "ldapport");
$ldapbase = &scepconf("ldap", "ldapbase");
$binddn = &scepconf("ldap", "binddn");
$bindpw = &scepconf("ldap", "bindpw");
$openssl = &scepconf("scepd", "openssl");
$crlpublic = &scepconf("scepd", "crlpublic");
$crlusers = &scepconf("scepd", "crlusers");

# we must check certain environment variables
$user = $ENV{REMOTE_USER};

# start building the HTML reply page
use CGI qw(param);

printf("Content-Type: text/html\n\n");

printf q(
<html>
<head>
<title>Certificate Revocation</title>
</head>
<body bgcolor="#ffffff">
<h1>Certificate Revocation</h1>
);

$old_fh = select(STDOUT);
$| = 1;
select($old_fh);

# parse info from request
if (param("revoke") eq "Revoke") {
	# read the information from the request
	$dntype = param("dntype");
	$unstructuredName = param("unstructuredName");
	$CN = param("cn");
	$password = param("password");

	# construct the distinguished name based on what the user has
	# selected
	if ($dntype eq "unstructured") {
		$dn = "unstructuredName=".$unstructuredName.",".$ldapbase;
	} else {
		$dn = "CN=".$CN.",".$ldapbase;
	}

	# use the dn2xid tool to retrieve the transaction id of the
	# request
	open(DN2XID, $dn2xid." -h ${ldaphost} -p ${ldapport} \"${dn}\" ".
		"2>/dev/null |");
	$transid = <DN2XID>;
	if ($transid eq "") {
		$failure = "transaction id not found";
	}

	# check the return code of the dn2xid tool
	close(DN2XID);
	if ($? != 0) {
		$failure = "did not find transaction id for DN ". $dn;
		$transid = "";
	}

	# if public revocation is allowed and the user is not on the
	# list of crl users, we must verify the LDAP password
	if (&revokeok($user) && (!&userok($user))) {
		# check the password by trying to bind against the
		# the directory
		if (!&checkpassword($dn, $password)) {
			$failure = "challenge password does not match request ".
				"for distinguished name $dn";
		}
	}

	# if we have a transaction id, it makes sense to try to revoke
	# the certificate matching the transaction id
	unless ($failure) {
		# construct an updatecrl command for the transaction id
		$rc = system("${updatecrl} ${transid} ".
			">/var/tmp/openscep/updatecrl.$$ 2>&1");
		if ($rc == 0) {
			$success = "certificate for $dn revoked";
		} else {
			$failure = "revokation of certificate for $dn failed ".
				"(transid = $transid)";
		}
	}
}


if ($success) {
	printf("<p>%s\n</p>\n", $success);
}
if ($failure) {
	printf("<p><font color=\"#ff0000\">%s</font>\n</p>\n", $failure);
}

skipit:

# we only display the form to input a CRL request if the revocation is
# publicly accessible or the user is a known user
if (&revokeok($user)) {
	&crlform($user);
}

#
# check whether a user belongs to the list of acceptable users for 
# certificate revocation
#
sub	userok {
	local($user) = shift;
	local($matches);
	$matches = grep { ($user eq $_) } split /\s+/, $crlusers;
	return ($matches > 0);
}

#
# check whether doing revocation is ok
#
# we assume that the user is properly authenticated and the web server
# has already decided that access to this page is ok
#
# returns true if password required, false otherwise
#
sub	revokeok {
	local($user) = shift;
	return (($crlpublic eq "true") || (&userok($user)));
}

#
# Display the certificate revocation form. This is subject to the following
# restrictions:
# - the password field is displayed if it is required, i.e. if the user
#   is not in the list of crlusers, but public revocation is ok. This
#   still allows for the web server to require all users to be properly
#   authenticated
#
sub	crlform {
	local($user) = shift;

	printf("<form action=\"crl.pl\" method=\"post\">\n");
	printf("<table>\n");
	printf("<tr>\n");
	printf("<td bgcolor=\"#000088\" valign=\"top\" rowspan=\"2\">".
		"<font color=\"#ffffff\">Subject:</font></td>\n");
	printf("<td bgcolor=\"#ddddff\"><input type=\"radio\" name=\"dntype\" ".
			"value=\"unstructured\" checked></td>\n");
	printf("<td bgcolor=\"#ddddff\">unstructuredName=<input ".
		"type=\"text\" size=\"30\" name=\"unstructuredName\"></td>\n");
	printf("</tr>\n");

	printf("<tr>\n");
	printf("<td bgcolor=\"#ddddff\"><input type=\"radio\" ".
		"name=\"dntype\" value=\"cn\"></td>\n");
	printf("<td bgcolor=\"#ddddff\">CN=<input type=\"text\" size=\"10\" ".
		"name=\"cn\">,%s</td>\n", $ldapbase);
	printf("</tr>\n");

	# if the user is not ok, we must display the challenge password
	# field
	if (!&userok($user)) {
		printf("<tr>\n");
		printf("<td bgcolor=\"#000088\">".
			"<font color=\"#ffffff\">Challenge Password:</font>".
			"</td>\n");
		printf("<td bgcolor=\"#ddddff\" colspan=\"2\"><input ".
			"type=\"password\" size=\"10\" name=\"password\">".
			"</td>\n");
		printf("</tr>\n");
	}

	printf("</table>\n");
	printf("<input type=\"submit\" name=\"revoke\" value=\"Revoke\">\n");
	printf("</form>\n");
}


printf("<h2>Certificate Revocation List</h2>\n");
printf("<table>\n");
printf("<tr bgcolor=\"#000088\"><td><pre><font size=\"-1\" color=\"#ffffff\">\n");
open(CRL, "${openssl} crl -in ${crlfile} -text |")  || die "CRL missing: $!\n";
$p = 2;
while ($_ = <CRL>) {
	if ($_ =~ m/Signature Algorithm/) {
		$p--;
	} else {
		if ($p > 0) { print; }
	}
}
close CRL;
printf("</font></pre></td></tr>\n");
printf("</table>\n");

printf q(
<hr />
&copy; 2001 The OpenSCEP Project
</body>
</html>
);

#
# check the password of the request against the LDAP directory
#
sub	checkpassword {
	local($dn, $password) = @_;
	if ($password eq "") {
		return 0;
	}
	# we use the fact that ldapsearch with an explicit bind will return
	# zero if the user exists and her password matches, but returns 0
	# otherwise
	local($cmd) = sprintf("%s -D '%s' -w '%s' -h %s -p %d ".
		"'userPassword=*' userPassword >/dev/null 2>&1",
		$ldapsearch, $dn, $password, $ldaphost, $ldapport);
	return (0 == system($cmd));
}

exit 0;

