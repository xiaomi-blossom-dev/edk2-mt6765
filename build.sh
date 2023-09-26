#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
./build_bootshim.sh
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -j$(nproc) -s -n 0 -a AARCH64 -t GCC5 -p MT6765Pkg/Devices/roo.dsc
cat BootShim/BootShim.bin workspace/Build/MT6765Pkg/DEBUG_GCC5/FV/MT6765PKG_UEFI.fd > workspace/UEFI
gzip -f workspace/UEFI
mkbootimg \
	--cmdline "bootopt=64S3,32N2,64N2" \
	--kernel workspace/UEFI.gz \
	--ramdisk blobs/initramfs \
	--base 0x40078000 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x11a88000 \
	--second_offset 0x00e88000 \
	--tags_offset 0x07808000 \
	--dtb_offset 0x07808000 \
	--header_version 2 \
	--dtb blobs/dtb \
	-o boot-uefi.img
