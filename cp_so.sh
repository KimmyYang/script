#!/bin/sh

f_s1=/Users/kimmy/Documents/workspace/linphone.lib/libs/armeabi/liblinphone-armeabi.so
f_s2=/Users/kimmy/Documents/workspace/linphone.lib/libs/armeabi-v7a/liblinphone-armeabi-v7a.so

if [ ! -f ${f_s1} ] || [ ! -f ${f_s2} ]; then
    echo "no any so, exit."
    exit
fi
d_1=/Users/kimmy/Documents/FIH/xone/xone/libs/PreLinphoneLib/libs/armeabi
d_2=/Users/kimmy/Documents/FIH/xone/xone/libs/PreLinphoneLib/libs/armeabi-v7a

echo "start copy .so"
cp -i ${f_s1} ${d_1}
cp -i ${f_s2} ${d_2}

ls -l ${d_1}
ls -l ${d_2}

