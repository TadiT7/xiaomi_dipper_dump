#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56780110:4cbf865cb35325e21457c069429ad5f755df6cf0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50812234:06fde021df2a79f233a5e42e122642cd17300204 EMMC:/dev/block/bootdevice/by-name/recovery 4cbf865cb35325e21457c069429ad5f755df6cf0 56780110 06fde021df2a79f233a5e42e122642cd17300204:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
