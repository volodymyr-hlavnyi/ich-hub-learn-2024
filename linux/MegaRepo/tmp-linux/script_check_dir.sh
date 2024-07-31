#!/bin/bash
#

for file in $1*
do
 if [[ -f $file ]]
 then
    echo "$file - This is a file"
 else
    echo -e "\e[32m$file - This is a directory\e[0m"
 fi
done


