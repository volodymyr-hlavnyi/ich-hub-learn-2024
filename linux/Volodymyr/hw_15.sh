
#!/bin/bash
#
info_file="hw_15.txt"

get_process_count() {
  ps aux | wc -l
}

for i in {1..10}
do
  current_time=$(date +"%H:%M:%S")
  
  process_count=$(get_process_count)
  
  echo "$current_time $process_count"
  #echo "Process count: " $process_count
  #echo "Info by CPU:" > $info_file
  #lscpu >> $info_file
  
  # sleep 5
done


os_version=$(cat /etc/os-release | grep 'NAME=' | head -1 | sed 's/"//g')
cpu_info=$(lscpu)
os_version2=$(cat /etc/os-release | grep PRETTY_NAME=| cut -d '"' -f 2 | awk '{print $1}')


echo $os_version > $info_file
echo $cpu_info >> $info_file
echo $os_version2 >> $info_file

for i in {50..100}
do
  name_file="$i.txt"
  echo $name_file
  echo $name_file > $name_file
done




