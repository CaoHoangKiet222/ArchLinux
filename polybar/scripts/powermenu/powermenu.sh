#!/bin/bash

theme="gruvbox.rasi"
THEME="$HOME/.config/polybar/scripts/powermenu/$theme"

MENU="$(rofi -sep "|" \
  -dmenu -i -p 'System' \
  -hide-scrollbar \
  -theme $THEME \
   <<< " Lock| Logout| Reboot| Shutdown| Suspend")"

case "$MENU" in
  *Lock) i3lock-fancy-rapid 5 3;;
  *Logout) i3-msg exit;;
  *Reboot) reboot;;
  *Shutdown) poweroff;;
  *Suspend) systemctl suspend;;
esac
