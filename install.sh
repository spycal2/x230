#!/bin/sh

if [ $(cat /etc/issue | awk '{print $1}') == 'Void' ]; then
  sudo xbps-install -Sy base-devel xorg xinit libXinerama libXft libX11 webkit2gtk \
    curl wget exa neovim feh w3m w3m-img noefetch alsa-utils make gcc patch scrot python3 python3-pip tree \
    font-hack-ttf papirus-icon-theme papirus-folders \
    lxappearance pcmanfm firefox polybar rofi bspwm sxhkd
else
  echo "You're not using Void Linux"
fi

# vim
pip install --user pynvim

