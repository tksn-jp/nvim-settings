#!/bin/sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./dein/installer.sh
sleep 10s
ln -sf ./.vimrc $HOME/.vimrc
if [ `which nvim` ]; then
	if [ -d $HOME/.config/ ]; then
		if [ -d $HOME/.config/nvim/ ]; then
			ln -sf ./.vimrc $HOME/.config/nvim/init.vim
		else
			mkdir $HOME/.config/nvim
			ln -sf ./.vimrc $HOME/.config/nvim/init.vim
		fi
	else
		mkdir -p $HOME/.config/nvim
		ln -sf ./.vimrc $HOME/.config/nvim/init.vim
	fi
fi
sh ./dein/installer.sh ./dein/
