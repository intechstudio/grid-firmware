#!/bin/sh

echo "print working directory"
echo $PWD

echo "ls -la /"
ls -la /

echo "which idf.py"
which idf.py

idf.py -C esp32 build

if [ $? -ne 0 ] ; then
	exit 1
fi

python3 tools/uf2conv/uf2conv.py -f ESP32S3 esp32/build/grid_fw.bin -b 0x0 -c -o esp32/build/grid_fw.uf2
