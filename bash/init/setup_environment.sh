#!/bin/bash

sudo apt update

sudo apt install --yes default-jdk

sudo apt install --yes screen

sudo apt install --yes python3-pip
pip install -upgrade pip
pip install -r /root/minecraft-utils/mc_py_tools/requirements.txt