#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $SCRIPT_DIR/.vim/dein/installer.sh
sleep 10s
ln -sf $SCRIPT_DIR/.vim/.vimrc $HOME/.vimrc
if [ `which nvim` ]; then
	if [ -d $HOME/.config/ ]; then
		if [ -d $HOME/.config/nvim/ ]; then
			ln -sf $HOME/.vimrc $HOME/.config/nvim/init.vim
		else
			mkdir $HOME/.config/nvim
			ln -sf $HOME/.vimrc $HOME/.config/nvim/init.vim
		fi
	else
		mkdir -p $HOME/.config/nvim
		ln -sf $HOME/.vimrc $HOME/.config/nvim/init.vim
	fi
fi
sh $SCRIPT_DIR/.vim/dein/installer.sh $SCRIPT_DIR/.vim/dein/


