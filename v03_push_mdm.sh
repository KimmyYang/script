#/!bin/sh/
#adb devices
#adb root
#adb remount
adb shell mount -t vfat -o remount,rw /dev/block/platform/msm_sdcc.1/by-name/modem /firmware

adb push /Volumes/project/kimmy/8974/2145148_MDM/result/mba.b00 /firmware/image
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/mba.mdt /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b00 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b01 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b02 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b03 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b04 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b05 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b08 /firmware/image/

adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b10 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b11 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b13 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b14 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b15 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b16 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b17 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b18 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b19 /firmware/image/

adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b20 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b21 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b22 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b25 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b26 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.b27 /firmware/image/
adb push /Volumes/project/kimmy/8974/2145148_MDM/result/modem.mdt /firmware/image/

#adb shell sync
#pause
