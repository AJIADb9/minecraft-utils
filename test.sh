#!/bin/bash

#command=ls
#command="bash /root/minecraft/server/start.sh"
#command="echo asdasd"
#request="stuff ${command}^M"

#screen -S "MC" -X $request

screen -S "MC" -p 0 -X ls

exit

#screen -S "MC" -p 0 -X bash /root/minecraft/server/start.sh

SCREENS=$(screen -ls)

if [[ $SCREENS == No* || $SCREENS != *MC* ]]; then
  echo Creatng screen
  screen -dmS "MC" source /root/minecraft/server/start.sh
  echo Starting Minecraft server

else
  if [[ $* == "-f" || $* == "--force" ]]; then
    echo -f or --force provided: restarting...
    echo.
    echo Stopping server...
    screen -S "MC" -X stop
    echo Server stopped
    sleep 10
    echo Killing screen
    screen -X -S "MC" kill
    echo Screen killed

    "./$(basename "${0}")" && exit
  else
    echo Server already running
  fi
fi
