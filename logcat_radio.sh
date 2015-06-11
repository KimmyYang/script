#
#20141127 logcat for alog_radio @ kimmy 
#

#adb reboot
adb kill-server
adb start-server
adb devices

#create dir
cd /Users/kimmy/Desktop/Build/adb_cmd/
date=`date +%Y%m%d`
dir=${date}_adb
if [ -f ${dir} ]; then
   rm -rf ${dir}
fi
echo "create dir ${dir} ..."
mkdir ${dir}
cd ${dir}

#parameter setting
radio=radio
declare -i index=0
maxsize=8388693
cur_file=${radio}_${index}

while :
do
   if  [ ! -f  ${cur_file} ]; then

      touch ${cur_file}
      echo
      echo "Writing ${cur_file} now ..."  
      adb shell logcat -b radio | head -c${maxsize} > ${cur_file}
   
   else
      file=$PWD/${cur_file}
      echo $file
      size=$(wc -c ${file} | cut -f 1 -d '/' )
      
      if [ $size -ge $maxsize ]; then
         echo "${cur_file} size is ${size}. Change file."
         index=$((index+1))
         cur_file=${radio}_${index}
      fi
   
   fi
     
done



   
