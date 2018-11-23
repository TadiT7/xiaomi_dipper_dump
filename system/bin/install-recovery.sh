#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56419662:04f19bf743f88280d62a3ee6eb7fa2f430022724; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50480458:f8285c3392ff2608c0331fdfcc96a5121badc3d4 EMMC:/dev/block/bootdevice/by-name/recovery 04f19bf743f88280d62a3ee6eb7fa2f430022724 56419662 f8285c3392ff2608c0331fdfcc96a5121badc3d4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
