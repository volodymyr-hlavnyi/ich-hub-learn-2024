#!/bin/bash
#
if [ $# -eq 0 ]
 then 
  echo "Please enter as min one parameter."
 exit 1
fi

mkdir -p tmp_gen_files

NUM_FILES=$1

for ((i=1;i<=$NUM_FILES; i++))
do
 DATE1=$(date '+%Y%m$d')
 FILE_NAME="tmp_gen_files/file_$i_$RANDOM_$DATE1.txt"
 TEXT=$(head /dev/urandom | head -c 100)
 echo "$TEXT" > $FILE_NAME
done

