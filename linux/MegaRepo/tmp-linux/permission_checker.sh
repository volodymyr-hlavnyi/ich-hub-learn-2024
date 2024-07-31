#!/bin/bash
#

clear

for file in /opt/310524-ptm/*; do
if [[ -f $file ]]; then
 #echo "$file - is it file going..."
 ext="${file##*.}"
 if [[ "$ext" == "sh" ]]; then
   #echo "$file - is it sh file..."
   if [[ -x $file ]]; then
     echo "$file - skip, already +x"
   else
     echo -e "\e[31m$file - changing sh +x\e[0m"
     chmod +x $file
   fi
 fi

else
 #echo "$file - is directory"
 for file2 in $file/*; do
  if [[ -f $file2 ]]; then
   ext2="${file2##*.}"
   #echo "$file2 - is it file going..."
   if [[ "$ext2" == "sh" ]]; then
     #echo "$file2 - is it sh file..."
     if [[ -x $file2 ]]; then
       echo "$file2 - skip, already +x"
     else
       echo -e "\e[31m$file2 - changing sh +x\e[0m"
       chmod +x $file2
     fi
   fi
 else
   #echo "$file2 - is directory, skip"
   for file3 in $file2/*; do
   if [[ -f $file3 ]]; then
    ext3="${file3##*.}"
    #echo "$file3 - is it file going..."
    if [[ "$ext3" == "sh" ]]; then
      #echo "$file3 - is it sh file..."
      if [[ -x $file3 ]]; then
        echo "$file3 - skip, already +x"
      else
        echo -e "\e[31m$file3 - changing +x\e[0m"
        chmod +x $file3
      fi
    fi
   else
    echo "$file3 - is directory, skip"
   fi
  done
fi
done
fi
done


