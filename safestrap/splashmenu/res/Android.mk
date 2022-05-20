LOCAL_PATH := $(call my-dir)

SS_RES := $(LOCAL_PATH)/$(DEVICE_RESOLUTION)

SS_RES_CMD := \
	mkdir -p $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/res && \
	cp -fr $(SS_RES)/* $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/res/

# Transfer in the resources for the device
include $(CLEAR_VARS)
LOCAL_MODULE := ssres
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_POST_INSTALL_CMD := $(SS_RES_CMD)
include $(BUILD_PREBUILT)
