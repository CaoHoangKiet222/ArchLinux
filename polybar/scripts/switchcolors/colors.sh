#!/bin/bash

source ./replaces/polybar.sh
source ./replaces/rofi.sh
source ./replaces/dunst.sh
source ./replaces/i3.sh
source ./replaces/scripts_polybar.sh
source ./replaces/zsh.sh
source ./replaces/settings.sh

LAUNCH="$HOME/.config/polybar/launch.sh"

if  [[ $1 = "gruvbox" ]]; then
  # replacing colors in polybar
  polybar_changes $1

  # replacing in zsh
  zsh_changes $1

  # replacing border in i3
  i3_changes $1

  # replacing theme scripts in polybar
  scripts_polybar_changes $1

  # replacing color flameshot
  flameshot config -m "#fabd2f"

  # replacing powermenu in rofi dir
  rofi_changes $1

  # replacing dunst for beautiful notification
  dunst_changes $1

elif  [[ $1 = "dracula" ]]; then
  # replacing colors in polybar
  polybar_changes $1

  # replacing in zsh
  zsh_changes $1

  # replacing border in i3
  i3_changes $1

  # replacing theme scripts in polybar
  scripts_polybar_changes $1

  # replacing color flameshot
  flameshot config -m violet

  # replacing powermenu in rofi dir
  rofi_changes $1

  # replacing dunst for beautiful notification
  dunst_changes $1
fi

# replacing theme file and restart tray icons
settings_changes

# Restarting polybar
$LAUNCH
