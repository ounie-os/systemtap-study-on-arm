#!/bin/sh

set -u
set -e

BOARD_DIR="$(dirname $0)"
WIFI_FIRMWARE="${BOARD_DIR}/brcm"
WIFI_SCRIPT="${BOARD_DIR}/S97xdp"

mkdir -p ${TARGET_DIR}/lib/firmware
cp -ar ${WIFI_FIRMWARE} ${TARGET_DIR}/lib/firmware
cp -ar ${WIFI_SCRIPT} ${TARGET_DIR}/etc/init.d

