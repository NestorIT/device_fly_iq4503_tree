$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


PRODUCT_PACKAGES += \
    xaplay

PRODUCT_PACKAGES += \
	Email

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Dual Sim packages for Dual Sim application 
PRODUCT_PACKAGES += \
    Stk \
    Stk2
    
#Video Telephony Support
PRODUCT_PACKAGES += \
    libvideophone \
    3g324mConfig.val

# Local Phonebook account
PRODUCT_PACKAGES += LocalContactAccount

# CP diagnostic service
PRODUCT_PACKAGES += \
    BcmDiagService \
    libbcmdiag-jni

# NFC packages
#PRODUCT_PACKAGES+=    \
#	libnfc_jni \
#	Nfc \
#	Tag \
#	libnfc_nci \
#	SETester \

# This makefile copies the prebuilt wifi module
# for 4330 chip and corresponding firmware files with executables


# CMAS
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

#SD card state listener
PRODUCT_PACKAGES += \
    SDCardListener

# Misc other modules
PRODUCT_PACKAGES += \
    lights.java \
    sensors.java

include device/broadcom/java/product-packages.mk

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS := device/broadcom/java/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/broadcom/java/vold.fstab:system/etc/vold.fstab \
	device/broadcom/java/egl.cfg:system/lib/egl/egl.cfg

# Input configuration files
PRODUCT_COPY_FILES += \
	device/broadcom/java/java.kl:system/usr/keylayout/java.kl \
	device/broadcom/java/java.kcm:system/usr/keychars/java.kcm \
	device/broadcom/java/Vendor_0001_Product_0001_Version_0100.idc:system/usr/idc/Vendor_0001_Product_0001_Version_0100.idc

PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += \
    device/broadcom/java/media_codecs.xml:system/etc/media_codecs.xml

#dns configuration file
PRODUCT_COPY_FILES += \
    device/broadcom/java/dnsmasq.conf:system/etc/dnsmasq.conf

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/broadcom/java/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

#    device/broadcom/java/connectivity/nfcee_access.xml:system/etc/nfcee_access.xml \

# Alsa configuration file
# PRODUCT_COPY_FILES += \
# 	external/alsa-lib/src/conf/alsa.conf:system/usr/share/alsa/alsa.conf \
# 	device/broadcom/java/audio_policy.conf:system/etc/audio_policy.conf \
# 	device/broadcom/java/asound.conf:system/etc/asound.conf


# wpa supplicant configuration files
# PRODUCT_COPY_FILES += \
# 	device/broadcom/java/connectivity/wpa_supplicant8.conf:system/etc/wifi/wpa_supplicant.conf \
# 	device/broadcom/java/connectivity/wpa_supplicant8.conf:data/misc/wifi/wpa_supplicant.conf \
# 	device/broadcom/java/connectivity/p2p_supplicant8.conf:system/etc/wifi/p2p_supplicant.conf \
# 	device/broadcom/java/connectivity/p2p_supplicant8.conf:data/misc/wifi/p2p_supplicant.conf

#property overrides for all platforms
# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	persist.brcm.log=none \
	persist.brcm.cp_crash=none \
	persist.brcm.ap_crash=none \
	persist.brcm.force_ramdump=0

PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=wlan0 \
       wifi.supplicant_scan_interval=15 

PRODUCT_PROPERTY_OVERRIDES += ro.com.android.dataroaming=false

# BRCM - SIM2 default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone_2=ANDROMEDA.ogg

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_AAPT_CONFIG expansion must not be a density.
#mj add for including xhdpi res
#PRODUCT_AAPT_CONFIG += hdpi mdpi
PRODUCT_AAPT_CONFIG += xhdpi hdpi mdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Dalvik Heap configuration property overrides  for the phone with 1024MB memory
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


# IF the usb.rc and log.rc differ according to platform/variants
# Move these files accordingly into javastone/ , javastone/<variantname>
PRODUCT_COPY_FILES += \
	device/broadcom/java/init.common.rc:root/init.common.rc \
	device/broadcom/java/init.brcm.usb.rc:root/init.brcm.usb.rc \
	device/broadcom/java/init.log.rc:root/init.log.rc \
	device/broadcom/java/file_contexts:root/file_contexts \
	device/broadcom/java/fstab.java:root/fstab.java

PRODUCT_COPY_FILES += \
	device/broadcom/java/apanic_rename.sh:/system/etc/apanic_rename.sh

# setting charging current in power-off charging mode for USB (SDP)
PRODUCT_COPY_FILES += \
	device/broadcom/java/sdp_charger.sh:/system/etc/sdp_charger.sh

PRODUCT_COPY_FILES += \
	device/broadcom/java/copy_cp_imgs.sh:system/etc/copy_cp_imgs.sh 

# gator copy to system/bin
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
	$(kbuild_dir)/drivers/gator/gator.ko:system/bin/gator.ko)

PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
	device/broadcom/java/gatord:system/bin/gatord)


# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/broadcom/java/java-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/broadcom/java/overlay

LOCAL_PATH := device/broadcom/java
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_java
PRODUCT_DEVICE := java
