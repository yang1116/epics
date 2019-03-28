#include <stdio.h>

#include "recGbl.h"
#include "devSup.h"
#include "devLib.h"
#include "aiRecord.h"

#include "epicsExport.h"
using namespace std;

long initread(int i)
{
	return 0;

}
long initreadrecord(struct aiRecord * precord)
{
	return 0;
}

long read_ai(struct aiRecord * precord)
{
	printf("%s\n",precord->name);
	precord->val += 1;
	return 2;
}
static struct{
	long number;
	long(*report)();
	long(*init)(int);
	long(*init_Record)(struct aiRecord *);
	long(*getioinfp)();
	long(*read_ai)(struct aiRecord * );
	long(*spricallincove)(struct aiRecord * ,int);
}te = {

	6,NULL,initread,initreadrecord,NULL,read_ai,NULL
};
epicsExportAddress(dset , te);

