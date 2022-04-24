temCore=$( sensors | grep -m 1 Core | awk '{print substr($3, 2, length($3) - 5)}' )

degree="糖"
temperatureValues=(40 50 60 70 80 90)
temperatureColors=( "#f4cb24" "#6bff49" "#ff8819" "#ff3205" "#f40202" "#ef02db")
temperatureIcons=(     )

if [ $temCore -lt 40 ];
then
  tmpEcho="%{F${temperatureColors[0]}}$temCore$degree ${temperatureIcons[0]}%{F-}"
else
  for (( i=1; i<=5; i++ ))
  do 
      if [ $temCore -ge ${temperatureValues[$i-1]} -a $temCore -lt ${temperatureValues[$i]} ];
      then
        tmpEcho="%{F${temperatureColors[$i]}}$temCore$degree ${temperatureIcons[$i]}%{F-}"
      fi
  done
fi

echo $tmpEcho
