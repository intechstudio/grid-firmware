SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
PORT=${PORT:-/dev/ttyUSB0}
OTA=${OTA:-yes}

esptool.py --chip esp32s3 -p "$PORT" -b 2000000 --before=default_reset --after=no_reset write_flash --flash_mode dio --flash_size detect --flash_freq 80m 0x10000 $SCRIPT_DIR/esp32s3/build/grid_fw.bin

if [ "$OTA" = "yes" ]; then
	otatool.py -p "$PORT" switch_ota_partition --slot 0
fi
