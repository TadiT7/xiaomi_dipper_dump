#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50963790:1335eb7bdeb489b72ae798318ea51b3f80bdedc1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46060874:b0d746d53b64dc829400d6a3da7f70bb1ce2ae48 EMMC:/dev/block/bootdevice/by-name/recovery 1335eb7bdeb489b72ae798318ea51b3f80bdedc1 50963790 b0d746d53b64dc829400d6a3da7f70bb1ce2ae48:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
