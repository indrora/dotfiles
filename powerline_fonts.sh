#!/bin/sh

[ ! -d /tmp/powerline-fonts ] && mkdir /tmp/powerline-fonts
cd /tmp/powerline-fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
[ ! -d /usr/share/fonts/PowerlineSymbols ] && mkdir /usr/share/fonts/PowerlineSymbols
cp PowerlineSymbols.otf /usr/share/fonts/PowerlineSymbols/PowerlineSymbols.otf
cp 10-powerline-symbols.conf /usr/share/fontconfig/conf.avail/10-powerline-symbols.conf
ln -s /usr/share/fontconfig/conf.avail/10-powerline-symbols.conf /etc/fonts/conf.d/10-powerline-symbols.conf
fc-cache -fv
