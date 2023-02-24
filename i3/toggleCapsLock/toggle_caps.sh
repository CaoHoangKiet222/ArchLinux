status=`xset -q | grep 'Caps Lock' | awk '{print $4}'`
PICDIR=$HOME/.config/Pictures/Wallpapers-Caplock

if [ $status == "off" ]
then
  killall dunst
  dunstify "Caps Lock" "On" --icon="$PICDIR/caps-lock-on.png" -t 1000 -a "System"
else
  killall dunst
  dunstify "Caps Lock" "Off" --icon="$PICDIR/caps-lock-off.png" -t 1000 -a "System"
fi

xdotool key Caps_Lock
