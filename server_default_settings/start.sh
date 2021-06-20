#!/bin/bash

cd "$(dirname "$0")" || exit
java -Xmx2G -Xms2G -jar server.jar nogui
