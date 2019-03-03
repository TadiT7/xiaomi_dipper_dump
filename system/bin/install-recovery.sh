#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56780110:b40765fca131ccfbfb36bf77c6aae6f8194cf82c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50812234:7b2690b2e2fc2db64825dcebb3776a131673cbaf EMMC:/dev/block/bootdevice/by-name/recovery b40765fca131ccfbfb36bf77c6aae6f8194cf82c 56780110 7b2690b2e2fc2db64825dcebb3776a131673cbaf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
