pkill flameshot
pkill dunst

while pgrep -u $UID -x flameshot>/dev/null && pgrep -u $UID -x dunst>/dev/null;
do
  sleep 1;
done

dunst &
flameshot gui
