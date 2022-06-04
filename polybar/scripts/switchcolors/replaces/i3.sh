#!/bin/bash

I3DIR="$HOME/.config/i3"

# replacing border in i3
function i3_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i 's/set $ac .*/set $ac     #fabd2f/g' $I3DIR/config
    sed -i "s/Pictures.*/Pictures\/Wallpapers-Gruvbox\/*\"/g" $I3DIR/config
  elif [ $1 == "dracula" ]
  then
    sed -i 's/set $ac .*/set $ac     #EE82EE/g' $I3DIR/config
    sed -i "s/Pictures.*/Pictures\/Wallpapers-Dracula\/*\"/g" $I3DIR/config
  elif [ $1 == "tokyo-night" ]
  then
    sed -i 's/set $ac .*/set $ac     #7aa2f7/g' $I3DIR/config
    sed -i "s/Pictures.*/Pictures\/Wallpapers-TokyoNight\/*\"/g" $I3DIR/config
  fi
  i3-msg reload
}
