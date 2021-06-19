#!/bin/bash

sudo apt update

sudo apt install --yes default-jdk

sudo apt install --yes screen

sudo apt install git

sudo apt install python3-pip
pip install -upgrade pip
pip install -r /root/minecraft/minecraft-utils/mc_py_tools/requirements.txt