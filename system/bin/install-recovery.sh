#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:47445326:69649e3d11663c107634f7a24f3355facd1b7cf7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:42571082:064b61fc1813a4ae92aa46e575931671b434f30f EMMC:/dev/block/bootdevice/by-name/recovery 69649e3d11663c107634f7a24f3355facd1b7cf7 47445326 064b61fc1813a4ae92aa46e575931671b434f30f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
