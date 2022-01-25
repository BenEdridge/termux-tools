#!/bin/bash

SCRIPT_PATH=`dirname $0`
DIST=$1
DIST_PATH=$PREFIX/var/lib/proot-distro/installed-rootfs/$DIST
CMD=$2

DIST_PASSWD_PATH="$DIST_PATH/etc/passwd"
if [ -e $DIST_PASSWD_PATH ]
then
  passwd=`grep "^root" $DIST_PASSWD_PATH`
  shell=${passwd##*:}
else
  shell="bash"
fi

shell_name=${shell##*/}
shell_rcfile=$HOME/.${shell_name}rc
if [ -e $shell_rcfile ]
then
  CMD="source $shell_rcfile; $CMD"
fi

$SCRIPT_PATH/login-proot.sh $DIST -- $shell -c "$CMD"
