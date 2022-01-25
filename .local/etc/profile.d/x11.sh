#!/bin/sh

export DISPLAY=:0
export PULSE_SERVER=tcp:127.0.0.1:4712
export XDG_RUNTIME_DIR=${TMPDIR}
export LOADER_DRIVER_OVERRIDE=zink
export GALLIUM_DRIVER=zink
