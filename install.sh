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

echo "Installing Powerline fonts..."
sh ./install_font.sh

echo "Finish !"

echo "By the way, in my vimrc , I love Monaco so much,so..."
echo "powerline-fonts for Monaco(https://github.com/supermarin/powerline-fonts/blob/bfcb152306902c09b62be6e4a5eec7763e46d62d/Monaco/Monaco%20for%20Powerline.otf)"
echo "Enjoy it : )"

