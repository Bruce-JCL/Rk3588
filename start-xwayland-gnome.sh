and -s "am broadcast -a AidluxX11Exit -f 0x01000000"
sleep 1
if [ ! "$(command -v gnomeplea-session)" ]; then
  echo "Please install  gnome" >&2
  exit 1
fi
and -s "su root /data/data/com.aidlux/files/usr/bin/termux-x11 :1"
sleep 2
sudo  env DISPLAY=:1 gnome-session --disable-acceleration-check