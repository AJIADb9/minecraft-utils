#!/bin/bash

sudo apt update

sudo apt install --yes oracle-java16-installer

sudo apt install --yes screen

sudo apt install --yes python3-pip
pip install -upgrade pip
pip install -r "${MC_UTILS_REQUIREMENTS_TXT}"
