#!/bin/sh

termux-x11 :0

if [ -e ~/.xinitrc ]; then
  . ~/.xinitrc &
fi
