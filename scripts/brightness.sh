#!/bin/bash

    brightness=`xbacklight | awk '{print int($0)}'`
    bar=$(seq -s "─" $(($brightness / 5)) | sed 's/[0-9]//g')
    dunstify -u low " $bar $brightness"
