#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7591936 1a0e70c5de2c2907f5e9380094c7422046b26720 5718016 3133a8ccbbdb5af3e7a31c775eae86c40d6617bf
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7591936:1a0e70c5de2c2907f5e9380094c7422046b26720; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5718016:3133a8ccbbdb5af3e7a31c775eae86c40d6617bf EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 1a0e70c5de2c2907f5e9380094c7422046b26720 7591936 3133a8ccbbdb5af3e7a31c775eae86c40d6617bf:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
