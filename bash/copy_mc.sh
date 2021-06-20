#!/bin/bash

if [ -d "${MC_SERVER}" ]; then
  echo Minecraft already HERE!
  exit
fi

mkdir -p $MC_SERVER/..
cp -R $MC_VOLUME/$MC_SERVER_NAME $MC_SERVER/..
