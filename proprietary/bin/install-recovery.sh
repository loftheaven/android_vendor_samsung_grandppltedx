#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11076908:af218b915b783643babde509d77d2b6a2b56ccdb; then
  applypatch EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9479464:4db2e4c96634ff031d47c23a21295b387e76f79f EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery af218b915b783643babde509d77d2b6a2b56ccdb 11076908 4db2e4c96634ff031d47c23a21295b387e76f79f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
