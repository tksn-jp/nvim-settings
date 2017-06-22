#!/bin/sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sleep 10s
ln -sf ~/dotfiles/.vimrc ~/.vimrc
sh ./dein/installer.sh ~/dotfiles/dein/
