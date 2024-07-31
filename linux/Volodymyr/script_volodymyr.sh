#!/bin/bash

USER=Volodymyr
echo "Hello $USER!"

echo "Current catalog is "
pwd

ps -ef

echo "Current date and time " $DATE

grep -ri "error" /var/log 2>/dev/null | grep -vi "binary"

cat /etc/os-release

cat /etc/os-release | wc -l

cat /etc/os-release | tail -5

cat /etc/passwd | awk -F ":" '{print "User = "$1 " home =" $6}'

echo 'Script is finished'

