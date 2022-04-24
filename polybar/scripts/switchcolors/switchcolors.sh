#!/bin/bash

SDIR="$HOME/.config/polybar/scripts/switchcolors"
theme='gruvbox.rasi'
THEME="$HOME/.config/polybar/scripts/switchcolors/styles/$theme"

MENU="$(rofi -sep "|" \
  -dmenu -i -p 'Select theme' \
  -hide-scrollbar \
  -theme $THEME \
  <<< " gruvbox|嗀  dracula")"

case "$MENU" in
  *gruvbox) $SDIR/colors.sh gruvbox ;;
  *dracula) $SDIR/colors.sh dracula ;;
esac
