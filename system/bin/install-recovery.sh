#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:54469966:bdcfa3c2d9f2b3162a3a9970b6747e82f6bda075; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49685834:3bdbb0350f889a3724016093aca565f580d4a92d EMMC:/dev/block/bootdevice/by-name/recovery bdcfa3c2d9f2b3162a3a9970b6747e82f6bda075 54469966 3bdbb0350f889a3724016093aca565f580d4a92d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
