#!/usr/bin/env sh

echo "Install package management--Vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Plugins..."
vim +PluginInstall +qall
echo "Successfully Install Plugins!!!"

echo "Setting some custom file..."
cd $HOME/.vim
if [ ! -d colors ];then
	mkdir colors
fi

ln -sf $HOME/sunprinceS-vim/colors/sun.vim colors/sun.vim
ln -sf $HOME/sunprinceS-vim/after .
ln -sf $HOME/sunprinceS-vim/ftplugin .
ln -sf $HOME/sunprinceS-vim/setting .
ln -sf $HOME/sunprinceS-vim/tags .
ln -sf $HOME/sunprinceS-vim/ftdetect .
ln -sf $HOME/sunprinceS-vim/syntax .
ln -sf $HOME/sunprinceS-vim/indent .

echo "Setting vimrc..."
ln -sf $HOME/sunprinceS-vim/vimrc $HOME/.vimrc

echo "Finish !"

