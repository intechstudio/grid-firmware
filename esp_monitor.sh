PORT=$(ls /dev/ttyUSB* | head -n 1)
idf.py -C esp32 -b 2000000 -p "$PORT" monitor
