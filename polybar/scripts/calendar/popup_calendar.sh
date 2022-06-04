#!/bin/sh
 
DATE="$(date +"%a %d %H:%M")"
 
case "$1" in
--popup)
 
    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons --posx=1615 --posy=45\
        --title="calendar" --borders=0 >/dev/null &
    ;;
*)
    echo ""
    ;;
esac
