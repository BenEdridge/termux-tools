#!/bin/bash

SCRIPT_PATH=`dirname $0`
DIST=$1
DIST_PATH=$PREFIX/var/lib/proot-distro/installed-rootfs/$DIST
CMD=$2

passwd=`grep "root" $DIST_PATH/etc/passwd`
shell=${passwd##*:}
shell_name=${shell##*/}

$SCRIPT_PATH/login-proot.sh $DIST -- $shell -c "source $HOME/.${shell_name}rc; $CMD"
