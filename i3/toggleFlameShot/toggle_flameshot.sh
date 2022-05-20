killall flameshot

while pgrep -u $UID -x flameshot>/dev/null;
do
  sleep 1;
done

flameshot gui
