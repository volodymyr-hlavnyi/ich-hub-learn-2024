#!/bin/bash
#
threshold=70,1
disk_usage=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')

echo $disk_usage

if (( $disk_usage >= $threshold ))
 then
   echo "Alarm! Disk usage more then 70% (" $disk_usage "%)"
   du -h / 2>/dev/null | sort -rh | head
 else
   echo "All ok with disk usage (" $disk_usage "%)"
fi
