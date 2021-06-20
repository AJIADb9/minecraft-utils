#!/bin/bash

cd "$(dirname "$0")"

cd init/
sh create_env.sh
sh setup_environment.sh
