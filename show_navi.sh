#!/system/bin/sh

if [ -e "/system/etc/show_navi" ]
    then
        echo "Disabling navigation bar"
        setprop qemu.hw.mainkeys 1
        rm /system/etc/show_navi
    else
        echo "Enabling navigation bar"
        setprop qemu.hw.mainkeys 0
        touch /system/etc/show_navi
fi

stop
start

