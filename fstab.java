# Android fstab file.
#<src> <mnt_point> <type> <mnt_flags and options> <fs_mgr_flags>
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK


/dev/block/platform/sdhci.1/by-name/system /system ext4 ro wait
/dev/block/platform/sdhci.1/by-name/cache /cache ext4 noatime,nosuid,nodev,nomblk_io_submit,errors=panic wait
/dev/block/platform/sdhci.1/by-name/userdata /data ext4 rw,nosuid,nodev,noatime,errors=panic,user_xattr,barrier=1,data=ordered,noauto_da_alloc wait,encryptable=footer 0 0
