#!/bin/bash

mnt_volume=/root
target_dir=/root

if [ -d "$target_dir" ]; then
  echo Minecraft already HERE!
  exit
fi

mkdir -p $target_dir
cp -R /mnt/volume_fra1_01/minecraft-server $target_dir