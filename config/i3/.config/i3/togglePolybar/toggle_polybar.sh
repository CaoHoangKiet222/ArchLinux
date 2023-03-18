CONFIG=$HOME/.config/i3/config
visible=$(grep -w visible $CONFIG| grep -oP "visible \K\w+")

if [ $visible == "true" ]
then
  sed -i -e "s/\$visible .*/\$visible false/g" $CONFIG
  sed -i -e "s/gaps top .*/gaps top 0/g" $CONFIG
  i3-msg reload
  xdotool click 1
  polybar-msg cmd hide
else
  sed -i -e "s/\$visible .*/\$visible true/g" $CONFIG
  sed -i -e "s/gaps top .*/gaps top 35/g" $CONFIG
  i3-msg reload
  xdotool click 1
  polybar-msg cmd show
fi
