#!/bin/bash

export MC_VOLUME_NAME=volume-fra1-01
export MC_VOLUME_MOUNT=/dev/disk/by-id/scsi-0DO_Volume_$MC_VOLUME_NAME
export MC_VOLUME=/mnt/$MC_VOLUME_NAME

exprot MC_SERVER=/root/minecraft-server

exprot MC_UTILS=/root/minecraft-utils
