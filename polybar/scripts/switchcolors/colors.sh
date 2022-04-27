#!/bin/bash

source $HOME/.config/polybar/scripts/switchcolors/replaces/polybar.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/rofi.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/dunst.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/i3.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/scripts_polybar.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/zsh.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/settings.sh
source $HOME/.config/polybar/scripts/switchcolors/replaces/flameshot.sh

LAUNCH="$HOME/.config/polybar/launch.sh"

# replacing colors in polybar
polybar_changes $1

# replacing in zsh
zsh_changes $1

# replacing border in i3
i3_changes $1

# replacing theme scripts in polybar
scripts_polybar_changes $1

# replacing color flameshot
flameshot_changes $1

# replacing powermenu in rofi dir
rofi_changes $1

# replacing dunst for beautiful notification
dunst_changes $1

# replacing theme file and restart tray icons
settings_changes

# Restarting polybar
$LAUNCH
