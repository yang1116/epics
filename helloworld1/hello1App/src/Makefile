TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = hello1
# hello1.dbd will be created and installed
DBD += hello1.dbd

# hello1.dbd will be made up from these files:
hello1_DBD += base.dbd
hello1_DBD += hello1_dev.dbd 

# Include dbd files from all support applications:
#hello1_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#hello1_LIBS += xxx

# hello1_registerRecordDeviceDriver.cpp derives from hello1.dbd
hello1_SRCS += hello1_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
hello1_SRCS_DEFAULT += hello1Main.cpp
hello1_SRCS_DEFAULT += dev_hello1.cpp 
hello1_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#hello1_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
hello1_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

