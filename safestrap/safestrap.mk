# Safestrap location
SS_LOC=etc

# safestrap
ifeq ($(SS_PRODUCT_MANUFACTURER), )
    SS_PRODUCT_MANUFACTURER := $(shell echo $(PRODUCT_MANUFACTURER) | tr '[A-Z]' '[a-z]')
endif

SS_PRODUCT_MAKEFILE_LOC := $(commands_TWRP_local_path)/safestrap/devices/$(SS_PRODUCT_MANUFACTURER)/$(TARGET_DEVICE)

# The extra blank line before *** is intentional to ensure it ends up on its own line
define SS_MAKEFILE_WARNING_MSG

****************************************************************************
  Expected to find safestrap.mk at:
    $(SS_PRODUCT_MAKEFILE_LOC)
  Please fix this or set $(SS_PRODUCT_MANUFACTURER)/$(TARGET_DEVICE) to the following:
    /safestrap/devices/
****************************************************************************
endef

ifeq ($(wildcard $(SS_PRODUCT_MAKEFILE_LOC)/safestrap.mk),)
    $(warning $(SS_MAKEFILE_WARNING_MSG))
    $(error safestrap.mk selection failed; exiting)
else
    include $(SS_PRODUCT_MAKEFILE_LOC)/safestrap.mk
endif
