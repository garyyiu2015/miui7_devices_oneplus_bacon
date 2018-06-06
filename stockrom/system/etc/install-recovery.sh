#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:5799936:9a098383803454487c464c87741730ac67aa761a; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5799936:9a098383803454487c464c87741730ac67aa761a EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 9a098383803454487c464c87741730ac67aa761a 5799936 9a098383803454487c464c87741730ac67aa761a:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
