#!/usr/bin/bash

# Polybar launch script
# github.com/jaagr/polybar/wiki#launching-the-bar-in-your-wms-bootstrap-routine

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch left and right monitor bars
polybar left &
polybar right &
