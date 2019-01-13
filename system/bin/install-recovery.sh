#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:12198800:0a585c34119b95f72aaae6b0ad1aeffffc6a3b06; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10412944:515523142dafc8f5c8d1691bb3afaa275b097927 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 0a585c34119b95f72aaae6b0ad1aeffffc6a3b06 12198800 515523142dafc8f5c8d1691bb3afaa275b097927:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
