#!/bin/bash

options="--termux-home --shared-tmp --bind ${HOME}/opt:/opt --bind ${HOME}:/root"

if [ "$1" != '' ]; then
  options+=" --user $1"
fi

proot-distro login ubuntu $options
