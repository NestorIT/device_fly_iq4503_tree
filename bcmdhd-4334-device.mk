# This makefile copies the prebuilt wifi module
# for 4334 chip and corresponding firmware files with executables

# kbuild_dir must be set to the kernel build output directory for the module

PRODUCT_COPY_FILES += \
	$(kbuild_dir)/drivers/net/wireless/bcmdhd_4334/bcmdhd_4334.ko:system/vendor/firmware/bcmdhd_4334.ko \
	device/broadcom/java/wlan/4334/BCM4334_FW_Release_6.10.58.740/STA_and_WiFiDirect/4334b2/bcm4334_sta.b2.bin:system/vendor/firmware/fw_wifi_4334.bin \
	device/broadcom/java/wlan/4334/BCM4334_FW_Release_6.10.58.740/SoftAP/bcm4334_aps.2G.bin:system/vendor/firmware/fw_wifi_apsta_4334.bin \
	device/broadcom/java/wlan/4334/BCM4334_FW_Release_6.10.58.740/MFG/bcm4334_mfg.2G.bin:system/vendor/firmware/fw_wifi_mfg_2G_4334.bin \
	device/broadcom/java/wlan/4334/BCM4334_FW_Release_6.10.58.740/MFG/bcm4334_mfg.bin:system/vendor/firmware/fw_wifi_mfg_4334.bin \
	device/broadcom/java/wlan/4334/BCM4334_FW_Release_6.10.58.740/STA_and_WiFiDirect/4334b2/bcm4334_sta.b2.2G.bin:system/vendor/firmware/fw_wifi_p2p_4334.bin \
	device/broadcom/java/wlan/4334/nvram_4334_hs10.txt:system/vendor/firmware/fw_wifi_nvram_4334_hs10.txt \
	device/broadcom/java/wlan/4334/nvram_4334_hs1x.txt:system/vendor/firmware/fw_wifi_nvram_4334_hs1x.txt \
	device/broadcom/java/wlan/4334/nvram_4334_hs1x.txt:system/vendor/firmware/fw_wifi_nvram_4334.txt \
	device/broadcom/java/wlan/4334/wl_utl:system/vendor/firmware/wl_4334 \
	device/broadcom/java/wlan/4334/dhd_utl:system/vendor/firmware/dhd_4334
