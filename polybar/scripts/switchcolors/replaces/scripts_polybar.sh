#!/bin/bash

SDIR="$HOME/.config/polybar/scripts"

# replacing theme scripts in polybar
function scripts_polybar_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i 's/theme=.*/theme="gruvbox.rasi"/g' $SDIR/powermenu/powermenu.sh
    sed -i "s/theme=.*/theme='gruvbox.rasi'/g" $SDIR/searchmenu/searchmenu.sh
    sed -i "s/theme=.*/theme='gruvbox.rasi'/g" $SDIR/switchcolors/switchcolors.sh
  elif [ $1 == "dracula" ]
  then
    sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/powermenu/powermenu.sh
    sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/searchmenu/searchmenu.sh
    sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/switchcolors/switchcolors.sh
  fi
  i3-msg reload
}
