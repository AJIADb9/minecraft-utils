#!/bin/bash

cd "$(dirname "$0")"

sh mount_volume.sh

sh $MC_UTILS/bash/copy_mc.sh
