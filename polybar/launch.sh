#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar topbar-right -r -c ~/.config/polybar/config.ini &
polybar topbar-dogboy -r -c ~/.config/polybar/config.ini &
polybar topbar-center -r -c ~/.config/polybar/config.ini &
polybar topbar-left -r -c ~/.config/polybar/config.ini &
polybar topbar-tray -r -c ~/.config/polybar/config.ini &
