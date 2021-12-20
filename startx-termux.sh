#!/bin/bash

DIST=ubuntu
DIST_PATH=$PREFIX/var/lib/proot-distro/installed-rootfs/$DIST

termux-x11 :0 &

if [ -e ~/.xinitrc ]; then
  sleep 1
  if [ `uname -o` == "Android" ]; then
    passwd=`grep "root" $DIST_PATH/etc/passwd`
    shell=${passwd##*:}
    shell_name=${shell##*/}
    ./start-ubuntu.sh -- $shell -c "cd $HOME; source .${shell_name}rc; . $HOME/.xinitrc" &
  else
    . ~/.xinitrc &
  fi
fi
