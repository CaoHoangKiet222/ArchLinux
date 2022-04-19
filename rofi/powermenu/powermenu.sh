#!/usr/bin/env bash
dir="$HOME/.config/rofi/powermenu"
theme="card_rounded"

uptime=0
check_one_minute=$(uptime -p | grep -w "1 minute")
check_one_hour=$(uptime -p | grep -w "1 hour")
check_minutes=$(uptime -p | grep "minute")
check_hours=$(uptime -p | grep "hour")

if [[ $check_hours == "" ]];
then
  if [[ $check_one_minute ]];
  then
    uptime=$(uptime -p | sed -e 's/up 1 minute/  ➳ 0 hour, 1 minute ❤(ˆ‿ˆԅ)/g');
  else
    uptime=$(uptime -p | sed -e 's/up /  ➳ 0 hour, /g' | sed -e 's/minutes/minutes ❤(ˆ‿ˆԅ)/g');
  fi
elif [[ $check_hours ]];
then
  if [[ $check_minutes ]]; then
    if [[ $check_one_minute ]]; then
      uptime=$(uptime -p | sed -e 's/up /  ➳ /g' | sed -e 's/minute/minute ❤(ˆ‿ˆԅ)/g')
    elif [[ !$check_one_minute ]]; then
      uptime=$(uptime -p | sed -e 's/up /  ➳ /g' | sed -e 's/minutes/minutes ❤(ˆ‿ˆԅ)/g')
    fi
  elif [[ !$check_minutes ]]; then
    if [[ $check_one_hour ]]; then
      uptime=$(uptime -p | sed -e 's/up 1 hour/ (ɔ◔︣‿◔︣)ɔ❤  1 hour, 0 minutes ❤(ˆ‿ˆԅ)/g')
    elif [[ !$check_one_hour ]]; then
      uptime=$(uptime -p | sed -e 's/up / (ɔ◔︣‿◔︣)ɔ❤ /g' | sed -e 's/hours/hours, 0 minutes ❤(ˆ‿ˆԅ)/g')
    fi
  fi
fi

rofi_command="rofi -theme $dir/$theme"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "$uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			poweroff
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $reboot)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			reboot
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $lock)
		if [[ -f /usr/bin/i3lock ]]; then
			i3lock-fancy-rapid 5 3
		fi
        ;;
    $suspend)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			systemctl suspend
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $logout)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
				i3-msg exit
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
esac
