#!/bin/bash

SDIR="$HOME/.config/polybar/scripts/switchcolors"
theme='gruvbox.rasi'
THEME="$HOME/.config/polybar/scripts/switchcolors/styles/$theme"

MENU="$(rofi -sep "|" \
  -dmenu \
  -hide-scrollbar \
  -theme $THEME \
  <<< "gruvbox|dracula")"

case "$MENU" in
  *gruvbox) $SDIR/colors.sh gruvbox ;;
  *dracula) $SDIR/colors.sh dracula ;;
esac
