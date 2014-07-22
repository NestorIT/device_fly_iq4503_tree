
# Set this up here so that BoardVendorConfig.mk can override it

BOARD_USES_GENERIC_AUDIO := false

# set this to true as the software codecs rely on it
BOARD_USES_VCOS := false
BOARD_USES_VCOS_ANDROID := true

# defined in buildspec.mk
# BOARD_HAVE_BLUETOOTH := true
# BOARD_HAVE_BLUETOOTH_BCM := true
# BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/broadcom/java/connectivity/bluetooth

# Bplus by default use prebuilt library. set to false for aosp or bplus src
# build
# BPLUS_PREBUILT := true
# statically link hci-vendor lib with bplus libary for ip protection
# BLUEDROID_HCI_VENDOR_STATIC_LINKING = true
BOARD_HAVE_FMRADIO := true

BOARD_HAS_NFC := false

# GPS
BOARD_HAVE_GPS := true
CONFIG_HAL_SUPL:= false
ENABLE_TLS:= false
CONFIG_HAL_LCS_API:= false
CONFIG_HAL_GPIO_SYSFS:= false
CONFIG_HAL_RRLP_CUSTOM:= false
CONFIG_HAL_RRC_CUSTOM:= false
CONFIG_HAL_CP_RIL_API:= false
GPS_CHIP:= bcm2075
CONFIG_HAL_GPIO_INIT:=no
CONFIG_HAL_NO_GPIO:=no

CONFIG_HAL_LTO=no
CONFIG_HAL_LTO_DIR=/data/gps/
CONFIG_HAL_LTO_FILE=lto.dat
CONFIG_HAL_LBS=no
CONFIG_HAL_DEVICE_TAC=10101101
LTO_LICENSEE = samsung

# AGPS control plane
CONFIG_BRCM_AGPS_CONTROL_PLANE_ENABLE := true

# CAMERA
USE_CAMERA_STUB := false
BOARD_USES_CAMERAHAL := true
BOARD_USES_V4L2_CAMERAHAL := true

BOARD_USES_UNICAM := true
BOARD_USES_ISP := true
BOARD_USES_BCMCOMP := false
BOARD_USES_V3D_CSC := true
BOARD_HAVE_V3D_CSC_TESTS := false

# AUDIO Preprocessor related
BOARD_USES_MPS_TREQ := true

BOARD_ANDROID_USES_V3D := true
BOARD_USES_MPS_STAGEFRIGHT := true
BOARD_USES_VCE := true
BOARD_USES_VCE_TESTS := true

BOARD_HAVE_RIL := true
BOARD_HAVE_LTE_RIL := false

TARGET_RECOVERY_UI_LIB := librecovery_ui_java
TARGET_RELEASETOOLS_EXTENSIONS := device/broadcom/java

#CWM RECOVERY
#BOARD_CUSTOM_GRAPHICS := ../../../device/mobiistar/java/recovery/graphics.c
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_FLIPPED_SCREEN := true
TARGET_RECOVERY_FSTAB := device/broadcom/java/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
DEVICE_RESOLUTION := 480x854
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=EXT4

# Macro to build BRCM SRC lib used in referred in audioflinger
BOARD_USES_BRCM_SRC := true

#Macro to build FDMBC algorithm
BOARD_USES_MPS_FDMBC := false

# Define macro for alsa output sample rate
# to change to 48KHz from default 44.1KHz
BOARD_SET_ALSA_SAMPLE_RATE_48K := false

# Codecs stuff that builds only in Android
# Use SW codecs
BOARD_USES_MPS_SW_CODECS := true
# Build thrid party video codecs
BOARD_BUILD_MPS_THIRDPARTY_VIDEO_CODECS := true
BOARD_BUILD_MPS_THIRDPARTY_AUDIO_CODECS := true
BOARD_USES_MPS_ITTIAM_SW_VIDEO_CODECS := true
BOARD_USES_MPS_ITTIAM_H264_VIDEO_ENCODE_WITH_VCE := false
BOARD_USES_MPS_ITTIAM_H264_VIDEO_ENCODE_WITH_VTQ := false
BOARD_USES_MPS_SOFTWARE_H263_CODEC := true
BOARD_USES_MPS_SOFTWARE_H264_CODEC := true
BOARD_USES_MPS_ARCT_H264_VIDEO_DECODE_WITH_VCE := false
BOARD_USES_MPS_ARCT_H264_VIDEO_DECODE_WITH_VTQ := false
BOARD_USES_MPS_SOFTWARE_MPEG4_CODEC := true
# Disable support for MPEG4 ASP in Aricent MPEG4 decoder.
BOARD_ARCT_SUPPORT_MPEG4_ASP_DECODER := true
# Disable support for H263 Profile 3 in Aricent H263 encoder.
BOARD_ARCT_SUPPORT_H263_P3_ENCODER := false
# Build third party audio codecs
BOARD_USES_MPS_SOFTWARE_MP3_CODEC := true
BOARD_USES_MPS_SOFTWARE_MP3_ENCODER := false
# BRCM AAC codec ENabled.
BOARD_USES_MPS_SOFTWARE_AAC_CODEC := true
BOARD_USES_MPS_SOFTWARE_AAC_ENCODER := true
# BRCM Software AMR NB encoder/Decoder enabled.
BOARD_USES_MPS_SOFTWARE_AMRNB_ENCODER := true
BOARD_USES_MPS_SOFTWARE_AMRNB_DECODER := true
# BRCM AMRWB aricent Codec Enabled
BOARD_USES_MPS_SOFTWARE_AMRWB_CODEC := true

# Enable WMA Codec support
BOARD_USES_MPS_SOFTWARE_WMA_DECODER := true

# These should only be enabled in 1GHz variants
BOARD_USES_MPS_SW_ASYNC_ENCODERS := true
BOARD_USES_MPS_SW_ENCODERS_ZERO_COPY := true
BOARD_USES_MPS_SW_ASYNC_VIDEO_DECODERS := true
BOARD_USES_MPS_SW_VIDEO_DECODERS_ZERO_COPY := true

# This setting is to enable HW codecs to co-exist with SW codecs
BOARD_USES_H264_HW_CODECS := true
BOARD_USES_H264_HW__FAKE_CODECS := false
# This setting enables Zero input memcpy for the Hardware Decoders
BOARD_USES_MPS_HW_VIDEO_DECODERS_ZERO_COPY := true

# This setting enables the inclusion of extra media extractors like AVI , ASF
BOARD_USES_MAP_MEDIAEXTRACTORS := true

# This setting is used to enable the MPEG4 recording @ 720p resolution
BOARD_USES_MPEG4_720P_REC := true

# This setting is to enable the optimized build from MM sub-system on Java
# USe Hawaii MM build for all modules
BOARD_USES_HAWAII_MM_CONFIG := true

# This setting is to enable usage of aricent codec for mono/stereo and fraunhofer for multichannel
BOARD_SUPPORT_MC_SWITCHING := true

# This setting is to enable SBAEC.
BOARD_SUPPORT_SBAEC := false

# Support Video Telephony
CONFIG_VIDEO_TELEPHONY_ENABLE := true
# Support Software Codecs for Video Telephony
BOARD_BUILD_VIDEOTELEPHONY_USE_THIRDPARTY_SOFTWARE_VIDEO_CODECS := true

# Support reset duplicted-filter after airplane mode on/off
CONFIG_SEND_STOP_CB_SERVICE_IN_FLIGHT_MODE := true

# Support Smart Card
BOARD_HAS_SMARTCARD := true

# Support socket interface between C code layer of RIL and caller for EAP SIM
CONFIG_BRCM_EAP_VIA_SOCKET_ENABLE := false

# Support Android HW Interface Testframework
BOARD_HAVE_HW_TESTS := true
BOARD_HAVE_AUDIO_HW_TESTS := false
BOARD_HAVE_AUTO_TESTS := true

# BRRIL handle STK function like SETUP CALL, DTMF, SS, USSD, SMS
CONFIG_BRIL_STK_HANDLE_ENABLE := true
CONFIG_BRIL_HANDLE_STK_REFRESH_IN_RIL := false

BOARD_HAVE_BRCM_USB := true
# USB Audio
BOARD_HAVE_USB_AUDIO := false

# Napa Touchscreen support
BOARD_HAVE_NAPA_TOUCHSCREEN := true

# Broadcom Applications
BOARD_HAVE_BROADCOM_APPS := false

# define macro for alsa-lib and alsa-utils to replace the static path
BRCM_ALSA_LIB_DIR := external/alsa-lib
BRCM_ALSA_UTILS_DIR := external/alsa-utils

# do we need to flip between pages on the output? yes, as they are directly driven at the moment
BOARD_NO_PAGE_FLIPPING := false

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_CPU_SMP := true
TARGET_NO_BOOTLOADER := true

TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x82000000
# Kernel version, used by makefiles to add header include paths
BOARD_KERNEL_VERSION ?= 3.4.5

TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := java
TARGET_BOOTLOADER_BOARD_NAME := java

TARGET_SEC_INTERNAL_STORAGE := false

# Enable NEON feature
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bionic
BOARD_USES_LINARO_MEMCPY := true

ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif
ifeq ($(BOARD_USES_GENERIC_AUDIO),false)
# Enable these to use old ALSA HAL, default to new HAL
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_ALSA_UTILS := true
BOARD_USES_ALSA_AUDIO_VIBRA := true
endif

BOARD_USES_OVERLAY := false

# V3D configuration
BOARD_USES_V3D := true
BOARD_HAVE_V3D_APPS_INTERNAL := false
BOARD_HAVE_V3D_APPS_THIRDPARTY := false
BOARD_HAVE_V3D_APPS_TOOLS := false

USE_OPENGL_RENDERER := true


# BRALLOC is enabled
BOARD_USES_BRALLOC := true

# Don't build BrcmCamera app for JB
BOARD_HAVE_BRCM_CAMERA := false

# Don't use BRCM sensors or build libsensors by default
BOARD_USES_BRCM_SENSORS ?= false

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_SYSTEMIMAGE_PARTITION_SIZE ?= 499122176
BOARD_USERDATAIMAGE_PARTITION_SIZE ?= 158334976
BOARD_CACHEIMAGE_PARTITION_SIZE ?= 8126464

BOARD_FLASH_BLOCK_SIZE := 4096

# Dont build libcapi2, librpc for now
BRCM_PKG_CAPI2_SRCS := true
BRCM_PKG_RPC_SRCS := true
BRCM_BUILD_ALL := true

BOARD_USES_BROADCOM_NEWCAPI2 := true
CONFIG_BRCM_NEWCAPI2_INCLUDE := true

BRCM_BUILD_ALL_AT := true
BRCM_BUILD_ALL_ATX := true
BRCM_BUILD_ALL_SOC := true
BRCM_BUILD_ALL_URILC := true
BRCM_BUILD_ALL_XML := true
BRCM_BUILD_ALL_XSCRIPT := true

# BRCM_PKG_AT_SRCS:
#       = "false" for customer packages that contain only prebuilt
#                               libraries and executables. No AT source files
#                               are provided to the customer.
#       = "partial" for customer packages that contain some source files
#                               and the rest are packaged as prebuilt object files.
#       = "true" for customer packages that contain all AT source files.
BRCM_PKG_AT_SRCS := true

BRCM_ROOTDIR:= brcm_usrlib
USE_BRCM_PREBUILT := false
BRCM_BUILD_LINUX_ONLY := true
TARGET_COMMON_BASE ?= kernel/$(TARGET_BOARD_PLATFORM)/$(BOARD_KERNEL_VERSION)
INCLUDE_BRCM_RIL := false

INCLUDE_RUNSYSCMD := true

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x1600000


# DUN policy routing
DUN_POLICY_ROUTING := false

# DUN over PPP
INCLUDE_PPP_DUN := true

#BRCM sepcific sensor arch
#override below in respective project BoardConfig.mk
BOARD_USE_BRCM_SENSOR_ARCH := false

# Use the non-open-source parts, if they're present
-include vendor/broadcom/java/BoardConfigVendor.mk
