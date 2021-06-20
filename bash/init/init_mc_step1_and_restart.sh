#!/bin/bash

cd "$(dirname "$0")" || exit

sh set_env.sh
sh setup_environment.sh

sudo shutdown -r now
