#!/bin/bash

# replacing theme file and restart tray icons
function settings_changes() {
  lxappearance
  killall nm-applet blueman-applet dunst
  nm-applet --indicator &
  blueman-applet &
  dunst &
}
