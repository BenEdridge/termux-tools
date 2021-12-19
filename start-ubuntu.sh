#!/bin/bash

if [ `uname -o` != "Android" ]; then
  echo "run only in termux"
  exit 1
fi

options="--termux-home --shared-tmp --bind ${HOME}/opt:/opt --bind ${HOME}:/root"

proot-distro login ubuntu $options "$@"
