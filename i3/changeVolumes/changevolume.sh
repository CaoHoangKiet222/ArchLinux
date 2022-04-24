#!/bin/bash
VOLDIR=$HOME/.config/Pictures/Wallpapers-Volumes

function send_notification() {
	volume=$(pamixer --get-volume)
  if [ $volume -gt 70 ] 
  then
    dunstify -a "changevolume" -u low -r 9993 -h int:value:"$volume" -i "$VOLDIR/volume_up1.png" "Volume: ${volume}%" -t 2000
  elif [ $volume -gt 40 -a $volume -le 70 ] 
  then
    dunstify -a "changevolume" -u low -r 9993 -h int:value:"$volume" -i "$VOLDIR/volume_up2.png" "Volume: ${volume}%" -t 2000
  elif [ $volume -gt 0 -a $volume -le 40 ]
  then
    dunstify -a "changevolume" -u low -r 9993 -h int:value:"$volume" -i "$VOLDIR/volume_up3.png" "Volume: ${volume}%" -t 2000
  else
    pamixer -t
		dunstify -i "$VOLDIR/volume_mute.png" -a "changevolume" -t 2000 -r 9993 -u low "Muted"
  fi
}

case $1 in
up)
	# Set the volume on (if it was muted)
	pamixer -u
	pamixer -i 1 --allow-boost
	send_notification
	;;
down)
	pamixer -u
	pamixer -d 1 --allow-boost
	send_notification
	;;
mute)
	pamixer -t
	if $(pamixer --get-mute); then
		dunstify -i "$VOLDIR/volume_mute.png" -a "changevolume" -t 2000 -r 9993 -u low "Muted"
	else
		send_notification up
	fi
	;;
esac
