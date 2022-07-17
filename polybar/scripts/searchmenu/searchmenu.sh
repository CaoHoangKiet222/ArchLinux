#!/usr/bin/env bash

theme='gruvbox.rasi'
dir="$HOME/.config/polybar/scripts/searchmenu"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
