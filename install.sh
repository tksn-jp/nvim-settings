#!/bin/sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./dein/installer.sh
sleep 10s
ln -sf ~/vim-init-settings/.vimrc ~/.vimrc
if [ -d ~/.config/ ]; then
	if [ -d ~/.config/nvim/ ]; then
		ln -sf ~/.vimrc ~/.config/nvim/init.vim
	else
		mkdir ~/.config/nvim
		ln -sf ~/.vimrc ~/.config/nvim/init.vim
	fi
else
	mkdir ~/.config
	mkdir ~/.config/nvim
	ln -sf ~/.vimrc ~/.config/nvim/init.vim
fi
sh ./dein/installer.sh ~/vim-init-settings/dein/
