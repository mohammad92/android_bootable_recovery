LOCAL_PATH := $(call my-dir)

# Transfer in the resources for the device
include $(CLEAR_VARS)
LOCAL_MODULE := ssres
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_OUT)/../install-files/$(SS_LOC)/safestrap/res

SS_RES := $(LOCAL_PATH)/$(DEVICE_RESOLUTION)

SS_RES_GEN := $(intermediates)/ssres
$(SS_RES_GEN):
	mkdir -p $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/res
	cp -fr $(SS_RES)/* $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/res/

LOCAL_GENERATED_SOURCES := $(SS_RES_GEN)
LOCAL_SRC_FILES := ssres $(SS_RES_GEN)
include $(BUILD_PREBUILT)
