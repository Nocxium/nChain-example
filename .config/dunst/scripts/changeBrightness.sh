#!/usr/bin/env bash

msgTag="myBrightness"

brillo -u 200000 "$@"  > /dev/null

brightness="$(brillo -G | cut -d '.' -f 1)"
dunstify -t 1000 -a "changeBrightness" -u low -h int:value:"$brightness" "󰃠 " 
