#!/bin/bash
#
for i in {1..5}
 do
   echo "Number: $i"
 done

for k in {a..z}
 do
  echo "k -> $k"
 done

counter=1
while [ $counter -le 6 ]
  do
    echo "Counter: $counter"
    ((counter++))
    DATE=`date '+%I-%m-%S'`
    echo "$DATE"
    date >> file-$counter.txt
    sleep 2
  done

for FILE in /opt/310524-ptm/Volodymyr/* 
 do
   echo $FILE
 done

#counter2=1
#while ((counter2 <= 6))
# do
#   echo "Counter 2: $counter2"
#  ((counter2++1))
# done

