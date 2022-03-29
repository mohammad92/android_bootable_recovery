BUILD_SAFESTRAP_CMD += && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/hijack $(PRODUCT_OUT)/install-files/bin/e2fsck && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/recovery/root/* $(TARGET_RECOVERY_ROOT_OUT)/ && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/ss.config $(PRODUCT_OUT)/APP/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/ss.config $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/ss.config $(TARGET_RECOVERY_ROOT_OUT)/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/trlte-common/twrp.fstab $(TARGET_RECOVERY_ROOT_OUT)/etc/recovery.fstab && \
	cp -fr $(SS_COMMON)/sbin-extras/* $(TARGET_RECOVERY_ROOT_OUT)/sbin/
