#!/bin/bash
# obtain TrackPoint ID from xinput list
TP_ID=$(xinput list | grep TrackPoint | cut -f 2 | grep -Eo '[0-9]{1,}')
if [ -n "$TP_ID" ]; then
# obtain properties from xinput list-props "$TP_ID"
AS_ID=$(xinput list-props "$TP_ID" | grep 'Accel Constant Deceleration (' | cut -f 2 | grep -Eo '[0-9]{1,}')
# set the speed you want
xinput set-prop "$TP_ID" "$AS_ID" 0.35 
fi

