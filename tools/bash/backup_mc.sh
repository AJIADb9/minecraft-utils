#!/bin/bash

backup_dir=$(date +'%D/%T')
echo "Backup dir for today: /nas04/backups/${backup_dir}"

# cp -R  /root/minecraft/server /mnt/volume_fra1_01/minecraft/server
backup_date="$(date +'%Y.%m.%d/%H.%M.%S')"
echo "Backup date: ${backup_date}"

backup_dir=/mnt/volume_fra1_01/b_up/${backup_date}
echo "Backup dir: ${backup_dir}"
echo /mnt/volume_fra1_01/b_up/$backup_date

mkdir -p $backup_dir
cp -R /root/minecraft-server $backup_dir