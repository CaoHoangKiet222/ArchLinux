#!/bin/bash

BSPWMDIR="$HOME/.config/bspwm"

# replacing border in i3
function bspwm_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i 's/focused_border_color .*/focused_border_color \"#fabd2f\"/g' $BSPWMDIR/bspwmrc
  elif [ $1 == "dracula" ]
  then
    sed -i 's/focused_border_color .*/focused_border_color \"#EE82EE\"/g' $BSPWMDIR/bspwmrc
  elif [ $1 == "tokyo-night" ]
  then
    sed -i 's/focused_border_color .*/focused_border_color \"#A9B1D6\"/g' $BSPWMDIR/bspwmrc
  fi
  bspc wm -r
}
