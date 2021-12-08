#!/bin/bash

termux-x11 :0 &

if [ -e ~/.xinitrc ]; then
  sleep 1
  if [ -v TERMUX_VERSION ]; then
    shell=${SHELL##*/}
    ./start-ubuntu.sh -- $shell -c "cd $HOME; source .${shell}rc; . $HOME/.xinitrc" &
  else
    . ~/.xinitrc &
  fi
fi
