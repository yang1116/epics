#!../../bin/linux-x86_64/hello1

#- You may have to change hello1 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/hello1.dbd"
hello1_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=yangye16")
dbLoadRecords("db/hello1.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=yangye16"
