#include <stdio.h>
#include <openssl/err.h>
#include "openscep_err.h"

/* BEGIN ERROR CODES */
#ifndef OPENSSL_NO_ERR
static ERR_STRING_DATA OPENSCEP_str_functs[]=
	{
{ERR_PACK(0,OPENSCEP_F_D2I_ISSUER_AND_SUBJECT,0),	"D2I_ISSUER_AND_SUBJECT"},
{ERR_PACK(0,OPENSCEP_F_D2I_PAYLOAD,0),	"D2I_PAYLOAD"},
{ERR_PACK(0,OPENSCEP_F_ISSUER_AND_SUBJECT_NEW,0),	"ISSUER_AND_SUBJECT_NEW"},
{ERR_PACK(0,OPENSCEP_F_PAYLOAD_NEW,0),	"PAYLOAD_NEW"},
{0,NULL}
	};

static ERR_STRING_DATA OPENSCEP_str_reasons[]=
	{
{0,NULL}
	};

#endif

#ifdef OPENSCEP_LIB_NAME
static ERR_STRING_DATA OPENSCEP_lib_name[]=
        {
{0	,OPENSCEP_LIB_NAME},
{0,NULL}
	};
#endif


static int OPENSCEP_lib_error_code=0;
static int OPENSCEP_error_init=1;

void ERR_load_OPENSCEP_strings(void)
	{
	if (OPENSCEP_lib_error_code == 0)
		OPENSCEP_lib_error_code=ERR_get_next_error_library();

	if (OPENSCEP_error_init)
		{
		OPENSCEP_error_init=0;
#ifndef OPENSSL_NO_ERR
		ERR_load_strings(OPENSCEP_lib_error_code,OPENSCEP_str_functs);
		ERR_load_strings(OPENSCEP_lib_error_code,OPENSCEP_str_reasons);
#endif

#ifdef OPENSCEP_LIB_NAME
		OPENSCEP_lib_name->error = ERR_PACK(OPENSCEP_lib_error_code,0,0);
		ERR_load_strings(0,OPENSCEP_lib_name);
#endif
		}
	}

void ERR_unload_OPENSCEP_strings(void)
	{
	if (OPENSCEP_error_init == 0)
		{
#ifndef OPENSSL_NO_ERR
		ERR_unload_strings(OPENSCEP_lib_error_code,OPENSCEP_str_functs);
		ERR_unload_strings(OPENSCEP_lib_error_code,OPENSCEP_str_reasons);
#endif

#ifdef OPENSCEP_LIB_NAME
		ERR_unload_strings(0,OPENSCEP_lib_name);
#endif
		OPENSCEP_error_init=1;
		}
	}

void ERR_OPENSCEP_error(int function, int reason, char *file, int line)
	{
	if (OPENSCEP_lib_error_code == 0)
		OPENSCEP_lib_error_code=ERR_get_next_error_library();
	ERR_PUT_error(OPENSCEP_lib_error_code,function,reason,file,line);
	}
