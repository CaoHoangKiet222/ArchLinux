#!/bin/bash

I3DIR="$HOME/.config/i3"
PCDIR="$HOME/.config/polybar/colors"
SDIR="$HOME/.config/polybar/scripts"
ADIR="$HOME/.config/alacritty"
NDIR="$HOME/.config/nvim/lua/dogboy"
ZSHDIR="$HOME/.config/zsh"
COLDIR="$HOME/.config/colorls"

LAUNCH="$HOME/.config/polybar/launch.sh"


if  [[ $1 = "gruvbox" ]]; then
# Replacing colors in polybar
sed -i 's/background = .*/background = #282828/g' $PCDIR/colors.ini
sed -i 's/foreground = .*/foreground = #ebdbb2/g' $PCDIR/colors.ini

sed -i 's/xwindow = .*/xwindow = #ffffff/g' $PCDIR/colors.ini

sed -i 's/powermenu = .*/powermenu = #fa0025/g' $PCDIR/colors.ini

sed -i 's/i3-separator = .*/i3-separator = #ffffff/g' $PCDIR/colors.ini

sed -i 's/date-foreground = .*/date-foreground = #FFAB91/g' $PCDIR/colors.ini

sed -i 's/searchmenu-foreground = .*/searchmenu-foreground = #fcae47/g' $PCDIR/colors.ini

sed -i 's/wlan-foreground = .*/wlan-foreground = #fb7dff/g' $PCDIR/colors.ini
sed -i 's/wlan-ramp-foreground = .*/wlan-ramp-foreground = #fb7dff/g' $PCDIR/colors.ini

sed -i 's/battery-full-foreground = .*/battery-full-foreground = #3bff65/g' $PCDIR/colors.ini
sed -i 's/battery-label-charging-foreground = .*/battery-label-charging-foreground = #f7af31/g' $PCDIR/colors.ini
sed -i 's/battery-label-discharging-foreground = .*/battery-label-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini
sed -i 's/battery-animation-charging-foreground = .*/battery-animation-charging-foreground = #f7af31/g' $PCDIR/colors.ini
sed -i 's/battery-animation-discharging-foreground = .*/battery-animation-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini

sed -i 's/cpu-foreground = .*/cpu-foreground = #fcae47/g' $PCDIR/colors.ini

sed -i 's/memory-foreground = .*/memory-foreground = #ebb5eb/g' $PCDIR/colors.ini

sed -i 's/changetheme-foreground = .*/changetheme-foreground = #00ddff/g' $PCDIR/colors.ini

# Replacing colors in alacritty
sed -i 's/colors: .*/colors: *gruvbox/g' $ADIR/alacritty.yml

# replacing theme in neovim
sed -i '0,/colorscheme .*/s//colorscheme gruvbox/' $NDIR/colorscheme.lua

# replacing colorls dir and zsh-prompt
sed -i "s/dir: .*/dir: '#fabd2f'/" $COLDIR/dark_colors.yaml
sed -i '36 s/blue/yellow/g' $ZSHDIR/zsh-prompt

# replacing border in i3
sed -i 's/set $ac .*/set $ac     #fabd2f/g' $I3DIR/config
sed -i "s/Pictures.*/Pictures\/Wallpapers-Gruvbox\/*\"/g" $I3DIR/config
i3-msg reload

# replacing theme nautilus 
lxappearance

# replacing theme scripts in polybar
sed -i 's/theme=.*/theme="gruvbox.rasi"/g' $SDIR/powermenu/powermenu.sh
sed -i "s/theme=.*/theme='gruvbox.rasi'/g" $SDIR/searchmenu/searchmenu.sh
sed -i "s/theme=.*/theme='gruvbox.rasi'/g" $SDIR/switchcolors/switchcolors.sh

# Restarting polybar
$LAUNCH

elif  [[ $1 = "dracula" ]]; then
# Replacing colors in polybar
sed -i 's/background = .*/background = #141414/g' $PCDIR/colors.ini
sed -i 's/foreground = .*/foreground = #f8f8f2/g' $PCDIR/colors.ini

sed -i 's/xwindow = .*/xwindow = #ffffff/g' $PCDIR/colors.ini

sed -i 's/powermenu = .*/powermenu = #ff00ff/g' $PCDIR/colors.ini

sed -i 's/i3-separator = .*/i3-separator = #ffffff/g' $PCDIR/colors.ini

sed -i 's/date-foreground = .*/date-foreground = #e6e6e6/g' $PCDIR/colors.ini

sed -i 's/searchmenu-foreground = .*/searchmenu-foreground = #ff00ff/g' $PCDIR/colors.ini

sed -i 's/wlan-foreground = .*/wlan-foreground = #e6e6e6/g' $PCDIR/colors.ini
sed -i 's/wlan-ramp-foreground = .*/wlan-ramp-foreground = #e6e6e6/g' $PCDIR/colors.ini

sed -i 's/battery-full-foreground = .*/battery-full-foreground = #e6e6e6/g' $PCDIR/colors.ini
sed -i 's/battery-label-charging-foreground = .*/battery-label-charging-foreground = #f7af31/g' $PCDIR/colors.ini
sed -i 's/battery-label-discharging-foreground = .*/battery-label-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini
sed -i 's/battery-animation-charging-foreground = .*/battery-animation-charging-foreground = #f7af31/g' $PCDIR/colors.ini
sed -i 's/battery-animation-discharging-foreground = .*/battery-animation-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini

sed -i 's/cpu-foreground = .*/cpu-foreground = #e6e6e6/g' $PCDIR/colors.ini

sed -i 's/memory-foreground = .*/memory-foreground = #e6e6e6/g' $PCDIR/colors.ini

sed -i 's/changetheme-foreground = .*/changetheme-foreground = #e6e6e6/g' $PCDIR/colors.ini

# replacing colors in alacritty
sed -i 's/colors: .*/colors: *dracula/g' $ADIR/alacritty.yml

# replacing theme in neovim
sed -i '0,/colorscheme .*/s//colorscheme dracula/' $NDIR/colorscheme.lua

# replacing colorls dir and zsh-prompt
sed -i 's/dir: .*/dir: violet/' $COLDIR/dark_colors.yaml
sed -i '36 s/yellow/blue/g' $ZSHDIR/zsh-prompt

# replacing border in i3
sed -i 's/set $ac .*/set $ac     #EE82EE/g' $I3DIR/config
sed -i "s/Pictures.*/Pictures\/Wallpapers-Dracula\/*\"/g" $I3DIR/config
i3-msg reload

# replacing theme file
lxappearance

# replacing theme scripts in polybar
sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/powermenu/powermenu.sh
sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/searchmenu/searchmenu.sh
sed -i "s/theme=.*/theme='dracula.rasi'/g" $SDIR/switchcolors/switchcolors.sh

# Restarting polybar
$LAUNCH
fi
