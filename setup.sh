#!/bin/bash

BLUE='\033[1;34m'
NC='\033[0m'

function title {
  printf "\n${BLUE}"
  echo $1
  printf "${NC}"
}

title "Installing vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

title "Linking .vimrc"
cp ~/.vimrc ~/.vimrc.old
unlink ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc

title "Installing vim plugins"
vim +PluginInstall +qall

title "Installing jshint via npm"
sudo npm install -g jshint

title "Installing YouCompleteMe"
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --gocode-completer
cd -

