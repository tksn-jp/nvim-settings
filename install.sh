#!/bin/sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./dein/installer.sh
sleep 10s
ln -sf ~/vim-init-settings/.vimrc ~/.vimrc
sh ./dein/installer.sh ~/vim-init-settings/dein/
