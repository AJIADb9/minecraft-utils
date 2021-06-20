#!/bin/sh

# Create a mount point for your volume:
mkdir -p $MC_VOLUME

# Mount your volume at the newly-created mount point:
mount -o discard,defaults,noatime $MC_VOLUME_MOUNT $MC_VOLUME

# Change fstab so the volume will be mounted after a reboot
echo "${volume_mount} ${MC_VOLUME} ext4 defaults,nofail,discard 0 0" | sudo tee -a /etc/fstab
