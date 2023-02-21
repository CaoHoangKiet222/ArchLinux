#!/bin/sh
 
DATE="$(date +"%a %d %H:%M")"
 
case "$1" in
--popup)
 
    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons --posx=1645 --posy=22\
        --title="calendar" --borders=0 >/dev/null &
    ;;
*)
    echo ""
    ;;
esac
