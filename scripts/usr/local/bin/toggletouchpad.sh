#!/bin/bash

device="$(xinput list | grep "ETPS/2 Elantech Touchpad" | awk '{ print $6 }' | awk -F'id=' '{ print $2 }')"
property="$(xinput list-props $device | grep "Device Enabled" | awk -F'[()]' '{ print $2 }')"
mode="$(xinput list-props $device | grep $property | awk '{ print $4 }')"

if [ "$mode" == "1" ]; then
  xinput set-prop $device $property 0
else
  xinput set-prop $device $property 1
fi
