#!/bin/sh

#
# Dump a specified register region using devmem.
# For example:
#   ./devmem-dump.sh 0x0ae90000 0x200
#

set -eu

start_addr="$(printf "%d" "$1")"
readonly start_addr
size="$(printf "%d" "$2")"
readonly size

readonly end="$((start_addr + size))"

# toybox (Android) and busybox interpret width as bytes vs bits
if devmem --version 2>&1 | grep -q toybox; then
    devmem_width=1 # bytes
elif devmem --version 2>&1 | grep -q BusyBox; then
    devmem_width=8 # bits
else
    echo "Unrecognized devmem version: $(devmem --version 2>&1)"
    exit 1
fi
readonly devmem_width

addr="$start_addr"
while [ "$addr" -lt "$end" ]; do
    printf "0x%X - " "$addr"
    devmem "$addr" "$devmem_width"

    addr="$((addr + 4))"
done
