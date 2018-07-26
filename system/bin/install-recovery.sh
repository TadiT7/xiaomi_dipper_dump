#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:45331790:c04b0adcd9c4f9a59e5ec1dba4d5bb487810f3a5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:40461642:0031973e6113beaac0aa6293a0dbe1f7ca46b633 EMMC:/dev/block/bootdevice/by-name/recovery c04b0adcd9c4f9a59e5ec1dba4d5bb487810f3a5 45331790 0031973e6113beaac0aa6293a0dbe1f7ca46b633:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
