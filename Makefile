#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := Apsu

EXTRA_COMPONENT_DIRS += $(PROJECT_PATH)/libs/MPUdriver
EXTRA_COMPONENT_DIRS += $(PROJECT_PATH)/libs/I2Cbus
EXTRA_COMPONENT_DIRS += $(PROJECT_PATH)/libs/Aruna

include $(IDF_PATH)/make/project.mk
