#!/bin/sh
#create by KimmyYang 20150304

if [ -z $1 ] || [ -z $2 ]; then
    echo "Please enter the file and thread id"
    exit
fi
echo
file=${1}
thread_id=${2}
echo "Thread ID = \033[0;32m${thread_id}\033[0m"
filter_file=${file}_${thread_id}
filter_file_tmp=${filter_file}_tmp
if [ -f filter_file ]; then
    rm ${filter_file}
fi
if [ -f ${filter_file_tmp} ]; then
    rm ${filter_file_tmp}
fi
touch ${filter_file}
touch ${filter_file_tmp}
echo "New filter file create = \033[0;32m${filter_file}\033[0m"

awk -F'[()]' '{if($2=='${thread_id}') {print $1 "("$2")" $3}}' ${file} >> ${filter_file_tmp}
tr -d "\r" < ${filter_file_tmp} > ${filter_file}
rm ${filter_file_tmp}
echo "Done."
echo

