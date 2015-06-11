#!/bin/sh


f_name=linphone-android.jar
s_path=/Users/kimmy/Documents/FIH/Linphone/binary/linphone.lib/bin
d_path=/Users/kimmy/Documents/FIH/xone/xone/libs/PreLinphoneLib/libs
echo ""
echo "start copy ${f_name} from ${s_path} to ${d_path} ..."
cp -i ${s_path}/${f_name} ${d_path}
ls -l ${d_path}
echo ""

