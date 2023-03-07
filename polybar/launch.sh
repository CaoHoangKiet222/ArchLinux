#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
time=0.15

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
sleep $time
polybar topbar-right -r -c ~/.config/polybar/Main/config.ini &
sleep $time
polybar topbar-dogboy -r -c ~/.config/polybar/Main/config.ini &
sleep $time
polybar topbar-center -r -c ~/.config/polybar/Main/config.ini &
sleep $time
polybar topbar-left -r -c ~/.config/polybar/Main/config.ini &
sleep $time
polybar topbar-tray -r -c ~/.config/polybar/Main/config.ini &

if [[ $(xrandr -q | grep "HDMI-1 connected") ]]; then
  sleep $time
  polybar topbar-left -r -c ~/.config/polybar/Monitor/config.ini &
  sleep $time
  polybar topbar-tray -r -c ~/.config/polybar/Monitor/config.ini &
  sleep $time
  polybar topbar-center -r -c ~/.config/polybar/Monitor/config.ini &
  sleep $time
  polybar topbar-right -r -c ~/.config/polybar/Monitor/config.ini &
  sleep $time
  polybar topbar-dogboy -r -c ~/.config/polybar/Monitor/config.ini &
fi
