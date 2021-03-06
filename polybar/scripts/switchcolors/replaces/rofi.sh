#!/bin/bash

ROFIDIR="$HOME/.config/rofi"
ROFIWIFIDIR="$HOME/.config/rofi-wifi-menu"

# replacing powermenu in rofi dir
function rofi_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/card_rounded.rasi
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/confirm.rasi
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/powermenu/message.rasi
    sed -i "s/styles\/.*\.rasi/styles\/gruvbox.rasi/g" $ROFIDIR/launchers/misc/blurry_full.rasi
    sed -i 's/theme=.*/theme="gruvbox.rasi"/g' $ROFIWIFIDIR/rofi-wifi-menu.sh
  elif [ $1 == "dracula" ]
  then
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/card_rounded.rasi
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/confirm.rasi
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/powermenu/message.rasi
    sed -i "s/styles\/.*\.rasi/styles\/dracula.rasi/g" $ROFIDIR/launchers/misc/blurry_full.rasi
    sed -i 's/theme=.*/theme="dracula.rasi"/g' $ROFIWIFIDIR/rofi-wifi-menu.sh
  elif [ $1 == "tokyo-night" ]
  then
    sed -i "s/styles\/.*\.rasi/styles\/tokyo-night.rasi/g" $ROFIDIR/powermenu/card_rounded.rasi
    sed -i "s/styles\/.*\.rasi/styles\/tokyo-night.rasi/g" $ROFIDIR/powermenu/confirm.rasi
    sed -i "s/styles\/.*\.rasi/styles\/tokyo-night.rasi/g" $ROFIDIR/powermenu/message.rasi
    sed -i "s/styles\/.*\.rasi/styles\/tokyo-night.rasi/g" $ROFIDIR/launchers/misc/blurry_full.rasi
    sed -i 's/theme=.*/theme="tokyo-night.rasi"/g' $ROFIWIFIDIR/rofi-wifi-menu.sh
  fi
}
