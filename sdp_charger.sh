#!/system/bin/sh

CHG_TYPE=`cat /sys/class/power_supply/usb/model_name`

if [ $CHG_TYPE = "sdp" ]; then
	echo 500 > /sys/devices/platform/bcmpmu_chrgr/icc_fc
fi
