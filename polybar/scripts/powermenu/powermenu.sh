#!/bin/bash

theme='tokyo-night.rasi'
THEME="$HOME/.config/polybar/scripts/powermenu/$theme"

MENU="$(rofi -sep "|" \
  -dmenu -i -p 'System' \
  -hide-scrollbar \
  -theme $THEME \
   <<< " Lock| Logout| Reboot| Shutdown| Suspend")"

case "$MENU" in
  *Lock) 
    sleep 0.1 
    i3lock-fancy-rapid 5 3;;
  *Logout) i3-msg exit;;
  *Reboot) reboot;;
  *Shutdown) poweroff;;
  *Suspend) systemctl suspend;;
esac
