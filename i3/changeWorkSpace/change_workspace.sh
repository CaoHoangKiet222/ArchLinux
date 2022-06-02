# !/bin/bash
WINDOW=$(echo $(xwininfo -id $(xdotool getactivewindow) -stats | \
                egrep '(Width|Height):' | \
                awk '{print $NF}') | \
         sed -e 's/ /x/')
SCREEN=$(xdpyinfo | grep -m1 dimensions | awk '{print $2}')

GETWORKSPACE=$(i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2)

saveWorkSpace=0

if [ "$WINDOW" = "$SCREEN" ]; then
   sed -i "s/00\:class_g = 'Polybar'/80:class_g = 'Polybar'/g" ~/.config/picom.conf
   saveWorkSpace=$GETWORKSPACE
else
   sed -i "s/00\:class_g = 'Polybar'/80:class_g = 'Polybar'/g" ~/.config/picom.conf
fi

if [ $saveWorkSpace != $GETWORKSPACE ]; then
   sed -i "s/00\:class_g = 'Polybar'/80:class_g = 'Polybar'/g" ~/.config/picom.conf
fi
