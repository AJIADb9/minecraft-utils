#!/bin/bash

# Configs

set volume_name=volume-fra1-01
set volume_mount_prefix=/dev/disk/by-id/scsi-0DO_Volume_
set server_name=minecraft-server
set utils_name=minecraft-utils
set python_scripts_path=python
set bahs_scripts_path=bash

# ENVs

export MC_VOLUME_NAME=$volume_name
export MC_VOLUME_MOUNT=$volume_mount_prefix$MC_VOLUME_NAME
export MC_VOLUME=/mnt/$MC_VOLUME_NAME

export MC_BACKUP=$MC_VOLUME/b_up

exprot MC_SERVER_NAME=$server_name
exprot MC_SERVER=/root/$MC_SERVER_NAME
exprot MC_SERVER_START_SH=$MC_SERVER/start.sh

exprot MC_UTILS=/root/$utils_name
exprot MC_UTILS_PY=$MC_UTILS/$python_scripts_path
exprot MC_UTILS_SH=$MC_UTILS/$bahs_scripts_path
exprot MC_UTILS_REQUIREMENTS_TXT=MC_UTILS_PY/requirements.txt
