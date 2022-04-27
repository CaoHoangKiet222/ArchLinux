#!/bin/bash

ROFIDIR="$HOME/.config/rofi"

# replacing powermenu in rofi dir
function rofi_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/card_rounded.rasi
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/confirm.rasi
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/message.rasi
  elif [ $1 == "dracula" ]
  then
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/card_rounded.rasi
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/confirm.rasi
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/message.rasi
  fi
}
