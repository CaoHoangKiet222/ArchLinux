#!/usr/bin/env bash

theme="blurry_full"
dir="$HOME/.config/rofi/launchers/misc"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
