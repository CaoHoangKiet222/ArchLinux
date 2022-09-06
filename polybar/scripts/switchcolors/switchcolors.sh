#!/bin/bash

SDIR="$HOME/.config/polybar/scripts/switchcolors"
theme='dracula.rasi'
THEME="$HOME/.config/polybar/scripts/switchcolors/styles/$theme"

MENU="$(rofi -sep "|" \
  -dmenu \
  -hide-scrollbar \
  -theme $THEME \
  <<< "gruvbox|dracula|tokyo-night")"

case "$MENU" in
  *gruvbox) $SDIR/colors.sh gruvbox ;;
  *dracula) $SDIR/colors.sh dracula ;;
  *tokyo-night) $SDIR/colors.sh tokyo-night;;
esac
