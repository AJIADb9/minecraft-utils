#!/bin/bash

export MC_VOLUME_NAME=volume-fra1-01
export MC_VOLUME_MOUNT=/dev/disk/by-id/scsi-0DO_Volume_$MC_VOLUME_NAME
export MC_VOLUME=/mnt/$MC_VOLUME_NAME

export MC_BACKUP=$MC_VOLUME/b_up

exprot MC_SERVER_NAME=minecraft-server
exprot MC_SERVER=/root/$MC_SERVER_NAME
exprot MC_SERVER_START_SH=$MC_SERVER/start.sh

exprot MC_UTILS=/root/minecraft-utils
exprot MC_UTILS_REQUIREMENTS_TXT=$MC_UTILS/python/requirements.txt
