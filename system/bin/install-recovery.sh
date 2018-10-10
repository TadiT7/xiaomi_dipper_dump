#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:54953294:10e555c16a2d11e7061c8cee2cd43510b7774454; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50165066:d5a75413183e2099f786616ada6981b2f0e92704 EMMC:/dev/block/bootdevice/by-name/recovery 10e555c16a2d11e7061c8cee2cd43510b7774454 54953294 d5a75413183e2099f786616ada6981b2f0e92704:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
