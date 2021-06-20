#!/bin/bash

cd "$(dirname "$0")" || exit
java -Xmx1500M -Xms1500M -jar server.jar nogui
