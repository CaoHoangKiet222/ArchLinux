#!/usr/bin/env bash

theme="searchmenu"
dir="$HOME/.config/rofi/searchmenu"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
