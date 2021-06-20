#!/bin/bash

sudo apt update

sudo apt remove --yes openjdk-11-jre-headless
sudo apt install --yes openjdk-16-jre-headless --install-recommends

sudo apt install --yes screen

sudo apt install --yes python3-pip
pip install -upgrade pip
pip install -r "${MC_UTILS_REQUIREMENTS_TXT}"
