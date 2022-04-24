EN_ibus="xkb:us::eng"
VN_ibus="Bamboo"
lang=`ibus engine`
PICDIR=$HOME/.config/Pictures/Wallpapers-Languages


open_ibus_daemon=false
export open_ibus_daemon
if [ $open_ibus_daemon==false ]
then
  open_ibus_daemon=true
  ibus-daemon
  ibus engine $EN_ibus
fi

if [ $lang = $EN_ibus ]
then
  ibus engine $VN_ibus
  notify-send "Ibus" "Vietnamese" --icon="$PICDIR/flagVietNam.png" -t 1000 -a "System"
fi

if [ $lang = $VN_ibus ]
then
  ibus engine $EN_ibus
  notify-send "Ibus" "English" --icon="$PICDIR/flagUnitedStates.jpg" -t 1000 -a "System"
fi
