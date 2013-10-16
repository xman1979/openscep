#! /usr/bin/perl
#
# (c) 2001 Dr. Andreas Mueller, Beratung und Entwicklung
#
# $Id: rejected.pl.in,v 1.1 2001/12/17 09:39:57 afm Exp $
#
$bindir = "/usr/local/bin";
$sbindir = "/usr/local/sbin";
$openscepdir = "/usr/local/lib/openscep";
$cacert = $openscepdir."/cacert.der";
$cafingerprint = $sbindir."/cafingerprint";

printf("Content-Type: text/html\n\n");
printf q(
<html>
<head>
<title>Rejected requests</title>
</head>
<body bgcolor="#ffffff">
<h1>Rejected requests</h1>
);

open(CAF, "$cafingerprint $cacert 2>/dev/null |")
	|| die "cannot get ca fingerprint: $!\n";
$cafingerprint = <CAF>;
close(CAF);

printf("<p>CA key fingerprint: %s</p>\n", $cafingerprint);

printf q(
<table bgcolor="#ccccff">
<tr bgcolor="#000099">
<td><font color="#ffffff">distinguished name</font></td>
<td><font color="#ffffff">fingerprint</font></td>
</tr>
);

open(SCEPLIST, "$bindir/sceplist -h -r -c|")
	|| die "cannot open pipe to sceplist: #!\n";

while ($_ = <SCEPLIST>) {
	print $_
}

print q(
</table>
<hr />
&copy; 2001 The OpenSCEP Project
</body>
</html>
);

exit 0;
