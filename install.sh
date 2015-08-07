#!/usr/bin/env sh

echo "Install package management--Vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Plugins..."
vim +PluginInstall +qall
echo "Successfully Install Plugins!!!"

echo "Setting some custom file..."
cd $HOME/.vim
ln -s $HOME/sunprinceS-vim/colors/sun.vim colors/sun.vim
ln -s $HOME/sunprinceS-vim/after .
ln -s $HOME/sunprinceS-vim/ftplugin .
ln -s $HOME/sunprinceS-vim/setting .
ln -s $HOME/sunprinceS-vim/tags .

echo "Setting vimrc..."
ln -s $HOME/sunprinceS-vim/vimrc $HOME/.vimrc

echo "Installing Powerline fonts..."
cd $HOME/sunprinceS-vim
./install_font.sh

echo "Finish !"

