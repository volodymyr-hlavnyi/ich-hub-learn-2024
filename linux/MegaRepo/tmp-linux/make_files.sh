#!/bin/bash

if [ $# -eq 0 ]
    then
      echo "Error! "
    exit 1
fi
mkdir -p /opt/310524-ptm/VAndreev/generated_file

NUM_FILES=$1

for ((i=1; i<=NUM_FILES; i++))
do
  FILE_NAME="/opt/310524-ptm/VAndreev/generated_file/file_$RANDOM-$(date '+%Y%m%d').txt"
  TEXT=$(head /dev/urandom | head -c 100)
  echo "$TEXT" > $FILE_NAME
done
