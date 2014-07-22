# This makefile sets compile time definitions for the prebuilt wifi module
# for 4330 chip and corresponding firmware files with executables
#
# Connectivity - Wi-Fi
# ICS uses wpa_supplican v8
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#Use BCM internal supplicant
WPA_SUPPLICANT_VERSION      := VER_0_8_X_BCM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_wifi_4330.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_wifi_apsta_4330.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_wifi_p2p_4330.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/vendor/firmware/bcmdhd_4330.ko"
WIFI_DRIVER_MODULE_NAME     := "bcmdhd_4330"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_wifi_4330.bin nvram_path=/system/vendor/firmware/fw_wifi_nvram_4330.txt"

# Set this to true to fix SoftAP on JB when bcmdhd driver is configured as a LKM.
# This is needed because stock JB will not load the SoftAP firmware when the driver
# is configured as a LKM. You also need to set the path to the NVRAM.
# See 'hardware/libhardware_legacy/wifi/wifi.c' for details.
# If you have a local fix for SoftAP+LKM then you do not have enable this fix.

WIFI_DRIVER_BRCM_JB_LKM_FRAMEWORK_FIX	:= true
WIFI_DRIVER_NVRAM_PATH      ?= "/system/vendor/firmware/fw_wifi_nvram_4330.txt"
