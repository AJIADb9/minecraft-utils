#!/bin/bash

cd "$(dirname "$0")" || exit

java -Xmx1400M -Xms1400M -jar server.jar nogui
