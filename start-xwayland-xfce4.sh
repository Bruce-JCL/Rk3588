#!/bin/bash
and -s "am broadcast -a AidluxX11Exit -f 0x01000000"  >/dev/null 2>&1 &
sleep 1
if [ ! "$(command -v xfce4-session)" ]; then
  echo "please install xfce4" >&2
  exit 1
fi
and -s "su $(id -u)  /data/data/com.aidlux/files/usr/bin/aidlux-x11 :1"  >/dev/null 2>&1 &
sleep 2
env DISPLAY=:1 xfce4-session  >/dev/null 2>&1 &