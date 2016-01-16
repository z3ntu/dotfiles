#!/bin/bash

device=13
property=133
mode="$(xinput list-props $device | grep $property | awk '{ print $4 }')"
if [ "$mode" == "1" ]; then
  xinput set-prop $device $property 0
else
  xinput set-prop $device $property 1
fi
