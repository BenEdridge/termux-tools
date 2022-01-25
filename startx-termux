#!/bin/bash


termux-x11 :0 &

if [ -e ~/.xinitrc ]; then
  sleep 1
  if [ `uname -o` == "Android" ]; then
    DIST=ubuntu
    script_path=`dirname $0`
    $script_path/exec-proot.sh $DIST ". $HOME/.xinitrc" &
  else
    . ~/.xinitrc &
  fi
fi
