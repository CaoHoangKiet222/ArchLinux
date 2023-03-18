#!/bin/bash

BRIGHTDIR=$HOME/.config/Pictures/Wallpapers-Brightness

function send_notification() {
	brightness=$(light -G | cut -d '.' -f 1)
  if [ $brightness -gt 10 -a $brightness -lt 30 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level2.png" "Brightness: $brightness%" -t 2000
  elif [ $brightness -gt 30 -a $brightness -lt 45 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level3.png" "Brightness: $brightness%" -t 2000
  elif [ $brightness -ge 45 -a $brightness -lt 60 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level4.png" "Brightness: $brightness%" -t 2000
  elif [ $brightness -ge 60 -a $brightness -lt 85 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level5.png" "Brightness: $brightness%" -t 2000
  elif [ $brightness -ge 85 -a $brightness -lt 95 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level6.png" "Brightness: $brightness%" -t 2000
  elif [ $brightness -ge 95 ]
  then
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/rinnegan.png" "Brightness: $brightness%" -t 2000
  else
    dunstify -a "changebrightness" -u low -r 9991 -h int:value:"$brightness" -i "$BRIGHTDIR/sharingan_level1.png" "Brightness: $brightness%" -t 2000
  fi
}

case $1 in
up)
  light -A 1
	send_notification $1
	;;
down)
	light -U 1
	send_notification $1
	;;
esac
