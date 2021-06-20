#!/bin/bash

cd "$(dirname "$0")" || exit

cd init/ || exit
sh create_env.sh
sh setup_environment.sh

sudo shutdown -r now
