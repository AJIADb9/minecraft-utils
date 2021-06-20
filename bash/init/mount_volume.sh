#!/bin/sh

# Configs
volume_mount=/dev/disk/by-id/scsi-0DO_Volume_volume-fra1-01
new_mount_point=/mnt/volume_fra1_01

# Create a mount point for your volume:
mkdir -p $new_mount_point

# Mount your volume at the newly-created mount point:
mount -o discard,defaults,noatime $volume_mount $new_mount_point

# Change fstab so the volume will be mounted after a reboot
echo '/dev/disk/by-id/scsi-0DO_Volume_volume-fra1-01 ${new_mount_point} ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab

