if [ ! "$(command -v gnome-session)" ]; then
  echo "gnome 没有安装" >&2
  exit 1
fi