killall picom

while pgrep -u $UID -x picom>/dev/null;
do
  sleep 1;
done

polybar=$(pgrep -x polybar > /dev/null && echo "Process found" || echo "Process not found")
if [[ $polybar == "Process not found" ]]; then
   ~/.config/polybar/launch.sh &	
fi

picom --experimental-backends
