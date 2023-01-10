#!/bin/bash
and -s "am broadcast -a AidluxX11Exit -f 0x01000000"  >/dev/null 2>&1 &
sleep 1
if [ ! "$(command -v xfce4-session)" ]; then
  echo "Please install  xfce4" >&2
  exit 1
fi
and -s "su root /data/data/com.aidlux/files/usr/bin/termux-x11 :1"  >/dev/null 2>&1 &
sleep 2
echo $1 | sudo -S env DISPLAY=:1 xfce4-session  >/dev/null 2>&1 &