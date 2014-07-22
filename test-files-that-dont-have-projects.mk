# As of now, there is now way to copy prebuilt files into target filesystem
# without modifying ICS build project
#
# The best we can do is, copy these files from device.mk (which is what we are
# doing with this file), but with this we can't check if a particular module
# is enabled or not. So we end up copying it's files even if the module is
# not getting built.
#
# For e.g. the hw_test and busybox files below will *always* get copied into
# "system" even if BOARD_HAVE_HW_TEST is "false"

# FIXME : All of this should be done only for 'eng' variant ??

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/show_navi.sh:system/etc/show_navi.sh

# ASE files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/broadcom/java/ase_scripts,data/brcm/ase/scripts)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/../common/lmp/lmp_init.sh:root/lmp_init.sh
