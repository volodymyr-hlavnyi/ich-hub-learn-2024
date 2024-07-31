#!/bin/bash
#
backup_source="/opt /home/ec2-user"
backup_dest="/opt/310524-ptm/Volodymyr/backup"

mkdir -p $backup_dest

for dir in $backup_source
do
  backup_file="$backup_dest/$(basename $dir)_$(date +'%Y_%m_%m').tar.bz"
  tar -cjf "$backup_file" "$dir"
done

find "$backup_dest" -type f -name "*tar.bz" -mtime +14 -exec rm -rf {} \;
