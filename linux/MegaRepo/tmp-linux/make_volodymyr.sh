#!/bin/bash
# Volodymyr

echo ..
echo HW 13 Linux
echo Start..

MY_NAME=Volodymyr
echo $MY_NAME

working_dir=/opt/310524-ptm/Volodymyr/hw13
mkdir -p $working_dir

NUM_FILES=10

for ((i=1; i<=NUM_FILES; i++))
do
  FILE_NAME="$working_dir/${i}_$(date '+%d%m%y').txt"
  TEXT=$(head /dev/urandom | head -c 100)
  echo "$TEXT" > $FILE_NAME
  echo "Create $FILE_NAME"
done

echo Finish
