#!/usr/bin/env bash
FORMAT="%Y-%m-%d %H:%M:%S"
DIR="~/Images/screenshots/"
CMD='mv "$f" '"$DIR"
CMDCP='xclip -selection clipboard -target image/png -i $f'
DATE=$(date +"$FORMAT")
case $1 in
        area)
                sleep 1
                scrot "$FORMAT [Area].png" -zse "$CMD"
                notify-send 'Saved screenshot' "$DATE [Area].png"
                ;;
        window)
                scrot "$FORMAT [Window].png" -zue "$CMD"
                notify-send 'Saved screenshot' "$DATE [Window].png"
                ;;
        clipboard)
                scrot "/tmp/CLIPBOARD.png" -e "$CMDCP"
                notify-send 'Clipboarded screenshot'
                ;;
        full | *)
                scrot "$FORMAT [Full].png" -ze "$CMD"
                notify-send 'Saved screenshot' "$DATE [Full].png"
                ;;
esac
