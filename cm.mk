## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := java

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/broadcom/java/device_java.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := java
PRODUCT_NAME := cm_java
PRODUCT_BRAND := broadcom
PRODUCT_MODEL := java
PRODUCT_MANUFACTURER := broadcom
