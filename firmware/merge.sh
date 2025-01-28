esptool.py --chip esp32c3 merge_bin \
  -o merged-firmware.bin \
  --flash_mode dio \
  --flash_freq 40m \
  --flash_size 4MB \
  0x0000 bootloader.bin \
  0x8000 partitions.bin \
  0x9000 nvs-pl.bin \
  0x10000 firmware.bin \
  0x190000 spiffs.bin

