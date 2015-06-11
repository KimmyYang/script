#!/bin/sh

adb devices
date=`date +%Y%m%d%H%M`
alog_file=alog_${date}
#radio_file=alog_radio_${date}
echo "Output alog to ${alog_file}"
adb logcat -b main -b system -v threadtime > ${alog_file} 
#echo "Output radio log to ${radio_file}"
#adb shell logcat -b radio  -v time > ${radio_file} &
