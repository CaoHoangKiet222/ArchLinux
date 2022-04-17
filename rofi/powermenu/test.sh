uptime=0
check_one_minute=$(uptime -p | grep -w "1 minute")
check_one_hour=$(uptime -p | grep -w "1 hour")
check_minutes=$(uptime -p | grep "minute")
check_hours=$(uptime -p | grep "hour")

if [[ $check_hours == "" ]];
then
  echo "kiet"
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

echo $uptime
