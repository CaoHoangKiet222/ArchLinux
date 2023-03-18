#!/bin/bash

PCDIR="$HOME/.config/polybar/colors"

# replacing colors in polybar
function polybar_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i 's/background = .*/background = #1d2021/g' $PCDIR/colors.ini
    sed -i 's/foreground = .*/foreground = #ebdbb2/g' $PCDIR/colors.ini
    sed -i 's/border = .*/border = #fabd2f/g' $PCDIR/colors.ini
    sed -i 's/xwindow = .*/xwindow = #ffffff/g' $PCDIR/colors.ini
    sed -i 's/cava = .*/cava = #fabd2f/g' $PCDIR/colors.ini
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
  elif [ $1 == "dracula" ]
  then
    sed -i 's/background = .*/background = #141414/g' $PCDIR/colors.ini
    sed -i 's/foreground = .*/foreground = #f8f8f2/g' $PCDIR/colors.ini
    sed -i 's/border = .*/border = #ff00ff/g' $PCDIR/colors.ini
    sed -i 's/xwindow = .*/xwindow = #ffffff/g' $PCDIR/colors.ini
    sed -i 's/cava = .*/cava = #ff00ff/g' $PCDIR/colors.ini
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
  elif [ $1 == "tokyo-night" ]
  then
    sed -i 's/background = .*/background = #141414/g' $PCDIR/colors.ini
    sed -i 's/foreground = .*/foreground = #A9B1D6/g' $PCDIR/colors.ini
    sed -i 's/border = .*/border = #A9B1D6/g' $PCDIR/colors.ini
    sed -i 's/xwindow = .*/xwindow = #ffffff/g' $PCDIR/colors.ini
    sed -i 's/cava = .*/cava = #A9B1D6/g' $PCDIR/colors.ini
    sed -i 's/powermenu = .*/powermenu = #F7768E/g' $PCDIR/colors.ini
    sed -i 's/i3-separator = .*/i3-separator = #ffffff/g' $PCDIR/colors.ini
    sed -i 's/date-foreground = .*/date-foreground = #73DACA/g' $PCDIR/colors.ini
    sed -i 's/searchmenu-foreground = .*/searchmenu-foreground = #F7768E/g' $PCDIR/colors.ini
    sed -i 's/wlan-foreground = .*/wlan-foreground = #BB9AF7/g' $PCDIR/colors.ini
    sed -i 's/wlan-ramp-foreground = .*/wlan-ramp-foreground = #BB9AF7/g' $PCDIR/colors.ini
    sed -i 's/battery-full-foreground = .*/battery-full-foreground = #7AA2F7/g' $PCDIR/colors.ini
    sed -i 's/battery-label-charging-foreground = .*/battery-label-charging-foreground = #d03af2/g' $PCDIR/colors.ini
    sed -i 's/battery-label-discharging-foreground = .*/battery-label-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini
    sed -i 's/battery-animation-charging-foreground = .*/battery-animation-charging-foreground = #d03af2/g' $PCDIR/colors.ini
    sed -i 's/battery-animation-discharging-foreground = .*/battery-animation-discharging-foreground = #ff2e2e/g' $PCDIR/colors.ini
    sed -i 's/cpu-foreground = .*/cpu-foreground = #73DACA/g' $PCDIR/colors.ini
    sed -i 's/memory-foreground = .*/memory-foreground = #e6e6e6/g' $PCDIR/colors.ini
    sed -i 's/changetheme-foreground = .*/changetheme-foreground = #E0AF68/g' $PCDIR/colors.ini
  fi
}
