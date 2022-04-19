status=`xset -q | grep 'Caps Lock' | awk '{print $4}'`

if [ $status == "off" ]
then
  notify-send "Caps Lock" "On" --icon="~/Pictures/Wallpapers-Caplock/caps-lock-on.png" -t 1000 -a "System"
else
  notify-send "Caps Lock" "Off" --icon="~/Pictures/Wallpapers-Caplock/caps-lock-off.png" -t 1000 -a "System"
fi

xdotool key Caps_Lock
