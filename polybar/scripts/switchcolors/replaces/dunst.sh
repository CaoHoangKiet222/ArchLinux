#!/bin/bash

DUNSTDIR="$HOME/.config/dunst"

# replacing dunst for beautiful notification
function dunst_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i "s/frame_color.*/frame_color = \"#928374\"/" $DUNSTDIR/dunstrc
    sed -i "0,/background.*/s//background = \"#28282830\"/" $DUNSTDIR/dunstrc
    sed -i "0,/foreground.*/s//foreground = \"#ebdbb2\"/" $DUNSTDIR/dunstrc
    sed -i "61 s/background.*/background = \"#28282830\"/" $DUNSTDIR/dunstrc
    sed -i "62 s/foreground.*/foreground = \"#ebdbb2\"/" $DUNSTDIR/dunstrc
  elif [ $1 == "dracula" ]
  then
    sed -i "s/frame_color.*/frame_color = \"#d400ff\"/" $DUNSTDIR/dunstrc
    sed -i "0,/background.*/s//background = \"#14141430\"/" $DUNSTDIR/dunstrc
    sed -i "61 s/background.*/background = \"#14141430\"/" $DUNSTDIR/dunstrc
    sed -i "0,/foreground.*/s//foreground = \"#f8f8f2\"/" $DUNSTDIR/dunstrc
    sed -i "62 s/foreground.*/foreground = \"#f8f8f2\"/" $DUNSTDIR/dunstrc
  elif [ $1 == "tokyo-night" ]
  then
    sed -i "s/frame_color.*/frame_color = \"#A9B1D6\"/" $DUNSTDIR/dunstrc
    sed -i "0,/background.*/s//background = \"#14141430\"/" $DUNSTDIR/dunstrc
    sed -i "61 s/background.*/background = \"#14141430\"/" $DUNSTDIR/dunstrc
    sed -i "0,/foreground.*/s//foreground = \"#A9B1D6\"/" $DUNSTDIR/dunstrc
    sed -i "62 s/foreground.*/foreground = \"#A9B1D6\"/" $DUNSTDIR/dunstrc
  fi
}
