#!/bin/bash

cd "$(dirname "$0")" || exit

sh mount_volume.sh

sh "${MC_UTILS}/bash/copy_mc.sh"
