#!/bin/bash
os_version=$(cat /etc/os-release | grep PRETTY_NAME=| cut -d '"' -f 2)
current_date=$(date +"%Y_%m_%d")
current_time=$(date +"%H:%M:%S")
current_uptime=$(uptime -p)
system_load=$(uptime | awk -F'[a-z]:' '{print $2}')
disk_usage=$(df -h / | tail -1 | awk '{print $5}')
top5procces=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -5)
proccess_count=$(ps -ef | tail -n +2 | wc -l)
user_count=$(who | wc -l)
echo "OS version: " $os_version
echo "Current date: " $current_date
echo "Current time: " $current_time
echo "Uptime: " $current_uptime
echo "Load system: " $system_load
echo "Disk usage: " $disk_usage
echo "Proccess (top 5): " $top5procces
echo "Proccess count: " $proccess_count
echo "User count: " $user_count
