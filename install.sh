#!/bin/bash

USERNAME=`whoami`
if [ "$USERNAME" = "root" ]
then
	echo "Do not use super user privileges. Please switch to normal user. Aborting."; exit 1;
fi

#echo "Install packages.Please keyin the password of super user to switch privileges."
#su
sudo apt-get update;
if command -v vim >/dev/null && vim --version |grep -q -o '\ +python3\ \|\ +python\ ';
then
	sudo apt-get install gdb build-essential cmake python-dev python3-dev ctags;
else
	sudo apt-get install gdb build-essential cmake python-dev python3-dev cscope ctags vim-nox;
fi

if find $HOME/.vim/bundle/ -maxdepth 1 -name "Vundle.vim" -print -quit | grep -q .
then
	echo "Vundle.vim exits"
elif find $HOME/.vim/ -maxdepth 1 -name "bundle" -print -quit | grep -q .
then
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
else
	mkdir -p $HOME/.vim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

echo "backup ~/.vimrc to ~/.vimrc.bak"
mv $HOME/.vimrc $HOME/.vimrc.bak
cp ./.vimrc $HOME/.vimrc
echo "Install vim Plugin"
vim -E -u $HOME/.vimrc +PluginInstall +qall

cd $HOME/.vim/bundle/youcompleteme
./install.py --clang-completer


