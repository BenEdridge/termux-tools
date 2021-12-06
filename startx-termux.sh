#!/bin/sh

termux-x11 :0 &

if [ -e ~/.xinitrc ]; then
  sleep 1
  . ~/.xinitrc &
fi
