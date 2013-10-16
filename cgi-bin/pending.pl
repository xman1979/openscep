#! /usr/bin/perl
#
# pending.pl CGI-Script to create a list of pending SCEP requests and
# to sign some of them
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: pending.pl.in,v 1.6 2001/05/16 23:18:47 afm Exp $
#
$libdir = "/usr/local/lib";
$sbindir = "/usr/local/sbin";
$openscepdir = "/usr/local/lib/openscep";
$cacert = $openscepdir."/cacert.pem";
$cader = $openscepdir."/cacert.der";
$pendingdir = $openscepdir."/pending";
$granteddir = $openscepdir."/granted";
$rejecteddir = $openscepdir."/rejected";
$scepgrant = $sbindir."/scepgrant";
$scepreject = $sbindir."/scepreject";
$cafingerprint = $sbindir."/cafingerprint";

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

use CGI qw(param);

printf("Content-Type: text/html\n\n");

printf q(
<html>
<head>
<title>Pending SCEP Requests</title>
</head>
<body bgcolor="#ffffff">
<h1>Pending SCEP requests</h1>
);

$old_fh = select(STDOUT);
$| = 1;
select($old_fh);

open(CAF, "$cafingerprint $cader |") || die "cannot start cafingerprint: $!\n";
$fingerprint = <CAF>;
close(CAF);
printf("<p>CA key fingerprint: %s</p>\n", $fingerprint);

printf("<form action=\"pending.pl\" method=\"post\">\n");

printf("<table>\n");

opendir(DIR, $pendingdir) or die "cannot open pending requests directory: $!\n";
$count = 0;
while (defined($infofile = readdir(DIR))) {
	if (!($infofile =~ m/\S+.info$/)) {
		next;
	}
	$derfile = $infofile;
	$derfile =~ s/\.info$/.der/;
	open(INFO, $pendingdir."/".$infofile)
		|| die "cannot open infofile: $!\n";
	while ($_ = <INFO>) {
		if (m/^subject: (.*)/) {
			$subject = $1;
		}
		if (m/^transId: (.*)/) {
			$transid = $1;
		}
		if (m/^fingerprint: (.*)/) {
			$fingerprint = $1;
		}
	}
	close INFO;
	$grant = param($transid);
	if ($grant eq "Grant") {
		open(GRANT, "/usr/local/sbin/scepgrant ".$transid." 2>&1 |")
			|| ($grantfailed = 1);
		unless ($grantfailed == 1) {
			close GRANT || ($grantfailed = 1);
		}
		$grantlog .= "<tr><td>".$subject."</td>".
			"<td>".$fingerprint."</td><td>".
			(($grantfailed == 1) ? "failed" : "")."</td>".
			"</tr>\n";
		next;
	}
	if ($grant eq "Reject") {
		$grantlog .= "<tr><td>".$subject."</td>".
			"<td>".$fingerprint."</td></tr>\n";
		next;
	}
	$count++;
	printf("<tr bgcolor=\"#000088\">\n");
	printf("<td valign=\"top\"><font color=\"#ffffff\">Subject:</font>".
		"</td>\n");
	printf("<td valign=\"top\" colspan=\"2\"><font color=\"#ffffff\">%s".
		"</font></td>\n",
		$subject);
	printf("<td rowspan=\"4\"><font size=\"-1\" color=\"#ffffff\"><pre>\n");
	open(CERT, $openssl." req -config $openscepdir/openscep.cnf -in ".
		"$pendingdir/$derfile -inform DER -text 2>/dev/null|");
	$printit = 0;
	while ($_ = <CERT>) {
		if (m/Version:/) { $printit = 1; }
		if (m/Signature/) { $printit = 0; }
		s/^........//;
		if ($printit == 1) { print; }
	}
	printf("</pre></font></td></tr>\n");

	printf("<tr bgcolor=\"#ddddff\"><td valign=\"top\">Fingerprint:".
		"</td>\n");
	$fingerprint =~ s/ /-/g;
	printf("<td valign=\"top\" colspan=\"2\">%s</td></tr>\n", $fingerprint);

	printf("<tr bgcolor=\"#ddddff\"><td valign=\"top\">Transaction ID:".
		"</td>\n");
	printf("<td valign=\"top\" colspan=\"2\">%s</td></tr>\n", $transid);

	printf("<tr bgcolor=\"#ddddff\">".
		"<td valign=\"top\"><input type=\"radio\" name=\"%s\" ",
		$transid);
	printf("value=\"Grant\">Grant</td>\n");

	printf("<td valign=\"top\"><input type=\"radio\" name=\"%s\" ",
		$transid);
	printf("value=\"Reject\">Reject</td>\n");

	printf("<td valign=\"top\"><input type=\"radio\" name=\"%s\" ",
		$transid);
	printf("value=\"Keep\" checked>Keep</td></tr>\n");
}
close(DIR);

printf("</table>\n");

if ($count > 0) {
	printf("<input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
} else {
	printf("<p>none</p>");
}

printf("</form>\n");

if ($grantlog) {
	printf("<h2>Requests Granted</h2>\n");
	printf("<table><tr bgcolor=\"#000088\">\n".
		"<td><font color=\"#ffffff\">Subject</td>\n".
		"<td><font color=\"#ffffff\">Fingerprint</td></tr>\n".
		"%s</table>\n", $grantlog);
}

if ($rejectlog) {
	printf("<h2>Requests Rejected</h2>\n");
	printf("<table><tr bgcolor=\"#000088\">\n".
		"<td><font color=\"#ffffff\">Subject</td>\n".
		"<td><font color=\"#ffffff\">Fingerprint</td></tr>\n".
		"%s</table>\n", $reject);
}

printf q(
<hr />
&copy; 2001 The OpenSCEP Project
</body>
</html>
);
exit 0;
