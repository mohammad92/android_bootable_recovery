BUILD_SAFESTRAP_CMD += && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/hijack $(PRODUCT_OUT)/install-files/bin/e2fsck && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/rootfs/* $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/rootfs/ && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/ss.config $(PRODUCT_OUT)/APP/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/ss.config $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/ss.config $(TARGET_RECOVERY_ROOT_OUT)/ss.config && \
	cp -fr $(SS_COMMON)/devices/samsung/d2-common/twrp.fstab $(TARGET_RECOVERY_ROOT_OUT)/etc/recovery.fstab
