# This makefile copies the prebuilt wifi module
# for 4330 chip and corresponding firmware files with executables

PRODUCT_COPY_FILES += \
	$(kbuild_dir)/drivers/net/wireless/bcmdhd_4330/bcmdhd_4330.ko:system/vendor/firmware/bcmdhd_4330.ko \
	device/broadcom/java/wlan/4330/fw_bcm4330.bin:system/vendor/firmware/fw_wifi_4330.bin \
	device/broadcom/java/wlan/4330/fw_bcm4330.bin:system/vendor/firmware/fw_wifi_p2p_4330.bin \
	device/broadcom/java/wlan/4330/fw_bcm4330.bin:system/vendor/firmware/fw_wifi_apsta_4330.bin \
	device/broadcom/java/wlan/4330/nvram_4330.txt:system/vendor/firmware/fw_wifi_nvram_4330.txt \
	device/broadcom/java/wlan/4330/sdio-g-mfgtest-seqcmds/rtecdc.bin:system/vendor/firmware/fw_mfgtest_4330.bin \
	device/broadcom/java/wlan/4330/wl_4330:system/vendor/firmware/wl_4330
