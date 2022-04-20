#!/bin/bash

MENU="$(rofi -sep "|" -dmenu -i -p 'System' -width 12 -hide-scrollbar -line-padding 4 -theme ~/.config/i3/togglePowerMenu/gruvbox.rasi -padding 20 -lines 4 <<< " Lock| Logout| Reboot| Shutdown| Suspend")"
            case "$MENU" in
                *Lock) i3lock-fancy-rapid 5 3;;
                *Logout) i3-msg exit;;
                *Reboot) reboot;;
                *Shutdown) poweroff;;
                *Suspend) systemctl suspend;;
            esac
