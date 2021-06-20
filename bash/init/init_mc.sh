#!/bin/bash

cd "$(dirname "$0")"

cd init/
sh mount_volume.sh
sh setup_environment.sh

cp -R /mnt/volume_fra1_01/minecraft/environment/mc_tools /root

cd /root/mc_tools
sh copy_mc.sh