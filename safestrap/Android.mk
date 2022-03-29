LOCAL_PATH := $(call my-dir)

#SAFESTRAP COMMON
SS_INCLUDE_2NDINIT := true
SS_INCLUDE_SPLASHMENU := true
BOARD_USE_NO_DEVFS_SETUP := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Logging
#TWRP_EVENT_LOGGING := true

# Clear kernel compile
# unless this is marked as a KEXEC
TARGET_KERNEL_SOURCE := 
TARGET_KERNEL_CONFIG := 
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# 2nd-init
ifeq ($(SS_INCLUDE_2NDINIT), true)
  include $(commands_TWRP_local_path)/safestrap/2nd-init/Android.mk
endif

# splashmenu
ifeq ($(SS_INCLUDE_SPLASHMENU), true)
    include $(commands_TWRP_local_path)/safestrap/splashmenu/Android.mk
endif

# Call out to device-specific script
include $(commands_TWRP_local_path)/safestrap/build-safestrap.mk
include $(commands_TWRP_local_path)/safestrap/build-install.mk
