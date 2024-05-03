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

addr="$start_addr"
while [ "$addr" -lt "$end" ]; do
    printf "0x%X - " "$addr"
    devmem "$addr" 8

    addr="$((addr + 4))"
done
