SS_DEVICES_COMMON_PATH := $(call my-dir)

# Safestrap location
ifneq ($(SS_LOC),)
    SS_LOC=$(SS_LOC)
else
    SS_LOC=etc
endif

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
TARGET_PREBUILT_KERNEL := $(SS_DEVICES_COMMON_PATH)/kernel
