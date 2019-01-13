#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11074860:00339b2f6b9cb58faa97bd81254efe0931d9d63c; then
  applypatch EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9479464:6684eeccf46b61f05264cc97f49e30261c57e092 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 00339b2f6b9cb58faa97bd81254efe0931d9d63c 11074860 6684eeccf46b61f05264cc97f49e30261c57e092:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
