#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:54461774:c1cfb07e62770d7c037a682354669b6a0317a4f3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49677642:790a9f25b915a6d601a472effb5bd8cad3c43bba EMMC:/dev/block/bootdevice/by-name/recovery c1cfb07e62770d7c037a682354669b6a0317a4f3 54461774 790a9f25b915a6d601a472effb5bd8cad3c43bba:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
