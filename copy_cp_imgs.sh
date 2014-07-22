busybox mount -o remount rw /
busybox mount -o remount rw /system

busybox cp /dev/block/mmcblk0p5  /vendor/firmware/sysparm_ind.img
busybox cp /dev/block/mmcblk0p6  /vendor/firmware/sysparm_dep.img
busybox cp /dev/block/mmcblk0p7  /vendor/firmware/parm_spml_ind.img
busybox cp /dev/block/mmcblk0p8  /vendor/firmware/parm_spml_dep.img
busybox cp /dev/block/mmcblk0p9  /vendor/firmware/umts_cal.img
busybox cp /dev/block/mmcblk0p10 /vendor/firmware/cp_boot.img
busybox cp /dev/block/mmcblk0p11 /vendor/firmware/cp_image.img
busybox cp /dev/block/mmcblk0p13 /vendor/firmware/dsp_pram.img
busybox cp /dev/block/mmcblk0p14 /vendor/firmware/dsp_dram.img

busybox mount -o remount,ro /system
busybox mount -o remount,ro /
