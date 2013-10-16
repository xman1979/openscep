#! /usr/bin/perl
#
# add.pl CGI-Script to add a user in the LDAP directory so that it can
# be enrolled automatically
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: add.pl.in,v 1.6 2001/05/16 23:18:47 afm Exp $
#
$libdir = "/usr/local/lib";
$bindir = "/usr/local/bin";
$sbindir = "/usr/local/sbin";
$openscepdir = "/usr/local/lib/openscep";
$cacert = $openscepdir."/cacert.pem";
$pendingdir = $openscepdir."/pending";
$granteddir = $openscepdir."/granted";
$rejecteddir = $openscepdir."/rejected";
$scepgrant = $sbindir."/scepgrant";
$scepreject = $sbindir."/scepreject";
$scepconf = $bindir."/scepconf";

use CGI qw(param);

# read through the openscep.cnf configuration file and extrat ldap parameters
sub	scepconf {
	local($cmd) = "${scepconf} ". join(' ', @_)." 2>/dev/null |";
	open(CONF, $cmd) || die "cannot open scepconf: $!\n";
	$value = <CONF>;
	chop $value;
	close(CONF);
	return $value;
}
$ldapmodify = &scepconf("ldap", "ldapmodify");
$ldaphost = &scepconf("ldap", "ldaphost");
$ldapport = &scepconf("ldap", "ldapport");
$ldapbase = &scepconf("ldap", "ldapbase");
$binddn = &scepconf("ldap", "binddn");
$bindpw = &scepconf("ldap", "bindpw");
$openssl = &scepconf("scepd", "openssl");

# parse info from request
if (param("add") eq "Add") {
	$dntype = param("dntype");
	$unstructuredName = param("unstructuredName");
	$CN = param("CN");
	$password1 = param("password1");
	$password2 = param("password2");
	if ($password1 ne $password2) {
		$failure = "passwords don't match";
		goto skipit;
	}
	if ($dntype eq "unstructured") {
		$dn = "unstructuredName=".$unstructuredName.",".$ldapbase;
	} else {
		$dn = "CN=".$CN.",".$ldapbase;
	}
	$cmd = "$ldapmodify -a -D \"$binddn\" -w \"$bindpw\" -h ".
                "\"$ldaphost\" -p \"$ldapport\"";
	open(LDAP, "|$cmd >/dev/null 2>&1")
		|| die "cannot connect to LDAP: $!\n";
	printf(LDAP "dn: %s\n", $dn);
	printf(LDAP "objectClass: top\n");
	printf(LDAP "objectClass: sCEPClient\n");
	if (length($password1) > 0) {
		printf(LDAP "userPassword: %s\n", $password1);
	}
	printf(LDAP "\n");
	if (close(LDAP)) {
		$success = "added client <b>$dn</b>";
	} else {
		$failure = "failure closing LDAP: $!";
	}
}
skipit:

printf("Content-Type: text/html\n\n");

printf q(
<html>
<head>
<title>Add SCEP Client</title>
</head>
<body bgcolor="#ffffff">
<h1>Add SCEP Client</h1>
);
#printf("command: %s\n", $cmd);

if ($success) {
	printf("<p>%s\n</p>\n", $success);
}
if ($failure) {
	printf("<p><font color=\"#ff0000\">%s</font>\n</p>\n", $failure);
}

$old_fh = select(STDOUT);
$| = 1;
select($old_fh);

printf("<form action=\"add.pl\" method=\"post\">\n");

printf("<table>\n");

printf("<tr>\n");
printf("<td bgcolor=\"#000088\" valign=\"top\" rowspan=\"2\">".
	"<font color=\"#ffffff\">Subject:</font></td>\n");
printf("<td bgcolor=\"#ddddff\"><input type=\"radio\" name=\"dntype\" ".
		"value=\"unstructured\" checked></td>\n");
printf("<td bgcolor=\"#ddddff\">unstructuredName=<input type=\"text\" size=\"30\" ".
	"name=\"unstructuredName\"></td>\n");
printf("</tr>\n");

printf("<tr>\n");
printf("<td bgcolor=\"#ddddff\"><input type=\"radio\" name=\"dntype\" value=\"cn\">".
	"</td>\n");
printf("<td bgcolor=\"#ddddff\">CN=<input type=\"text\" size=\"10\" ".
	"name=\"cn\">,%s</td>\n", $ldapbase);
printf("</tr>\n");

printf("<tr>\n");
printf("<td bgcolor=\"#000088\" valign=\"top\" rowspan=\"2\">".
	"<font color=\"#ffffff\">Challenge Password:</font></td>\n");
printf("<td bgcolor=\"#ddddff\" colspan=\"2\"><input type=\"password\" size=\"10\" ".
	"name=\"password1\"></td>\n");
printf("</tr>\n");

printf("<tr>\n");
printf("<td bgcolor=\"#ddddff\" colspan=\"2\"><input type=\"password\" size=\"10\" ".
	"name=\"password2\">(again)</td>\n");
printf("</tr>\n");

printf("</table>\n");

printf("<input type=\"submit\" name=\"add\" value=\"Add\">\n");

printf("</form>\n");

printf q(
<hr />
&copy; 2001 The OpenSCEP Project
</body>
</html>
);

exit 0;
