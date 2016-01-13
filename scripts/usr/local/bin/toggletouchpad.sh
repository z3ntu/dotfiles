#!/bin/bash

device=13
property=167
mode="$(xinput list-props 13 | grep 167 | awk '{ print $4 }')"
if [ $mode -eq "1" ];then
  xinput set-prop $device $property 0
else
  xinput set-prop $device $property 1
fi
