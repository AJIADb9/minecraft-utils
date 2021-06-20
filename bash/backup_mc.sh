#!/bin/bash

backup_date="$(date +'%Y.%m.%d/%H.%M.%S')"
backup_dir=$MC_BACKUP/$backup_date

mkdir -p $backup_dir
cp -R $MC_SERVER $backup_dir

echo "Backup created in: ${backup_dir}"
