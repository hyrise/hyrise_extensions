extensions := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

-include ../rules.mk

include $(PROJECT_ROOT)/src/lib/access/Makefile

extensions.libname := ext
extensions.deps := hyr-access
$(eval $(call library,extensions))
