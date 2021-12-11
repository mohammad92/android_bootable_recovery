include $(commands_TWRP_local_path)/safestrap/devices/samsung/trlte-common/build-safestrap.mk

BUILD_SAFESTRAP_CMD += && \
	cp -fr $(SS_COMMON)/devices/samsung/trltetmo/rootfs/* $(PRODUCT_OUT)/install-files/$(SS_LOC)/safestrap/rootfs/
