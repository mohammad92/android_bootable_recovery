# remove fstab.qcom from recovery
INSTALL_SAFESTRAP_DEVICE_CMD := \
	rm -f $(TARGET_RECOVERY_ROOT_OUT)/fstab.qcom; \
	cp $(SS_COMMON)/devices/samsung/sdm845-common/rootfs/init $(TARGET_RECOVERY_ROOT_OUT)/;
