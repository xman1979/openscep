#include <openssl/asn1.h>
#include <openssl/x509.h>
#include <openssl/err.h>
#include <ldap.h>


int main(int argc, char **argv) 
{
	LDAP		*ldap = NULL;
	ldap = ldap_open("localhost", 389);
	if (ldap == NULL) {
		printf("failed to call ldap_open\n");
		return 0;
	}
	if (ldap_simple_bind_s(ldap, argv[1], argv[2]) != LDAP_SUCCESS) {
		printf("failed to call ldap_simple_bind_s\n");
		return 0;
	}
	
	ldap_unbind(ldap);
	return 0;
}


