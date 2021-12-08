#!/bin/bash

options="--termux-home --shared-tmp --bind ${HOME}/opt:/opt --bind ${HOME}:/root"

proot-distro login ubuntu $options "$@"
