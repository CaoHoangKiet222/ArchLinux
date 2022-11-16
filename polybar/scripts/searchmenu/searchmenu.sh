#!/usr/bin/env bash

theme='tokyo-night.rasi'
dir="$HOME/.config/polybar/scripts/searchmenu"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
