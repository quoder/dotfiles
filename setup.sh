#!/bin/bash
echo "This script will install necessary files for your debian based distro"
echo "Now downloading files from quoder/dotfiles"
cd ~
git clone https://github.com/quoder/dotfiles.git
cd dotfiles
git submodule update --init --recursive
echo "Installing vim with quoder's vimrc"
sudo apt-get install vim
mkdir .vim
cp -a  ~/dotfiles/vimfiles/. ~/.vim/
cp ~/dotfiles/.vimrc ~/
echo "Vim installed"
echo "Installing some dependencies"
sudo apt-get install dconf-cli
sudo apt-get install xterm
sudo apt-get install ncurses-term
sudo apt-get install build-essential
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install python-virtualenv
sudo apt-get install python-setuptools
sudo apt-get install python-dev
sudo apt-get install libjpeg
sudo apt-get install libjpeg-dev
sudo apt-get install libfreetype6
sudo apt-get install libfreetype6-dev 
sudo apt-get install zlib1g-dev
echo "Dependencies installed"
echo "Installing zsh"
sudo apt-get install zsh
cp ~/dotfiles/.zshrc ~/
echo "Please refer the docs to make ohmyzsh as your default shell"
echo "Now installing grub-customizer"
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
echo "Grub customizer installed"
echo "Installing 64-bit Sublime text build 3083"
cd ~/Downloads/
wget -c http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
sudo dpkg -i sublime-text_build-3083_amd64.deb
sudo apt-get install -f
cd ~
echo "Installing tmux"
sudo apt-get install tmux
cp ~/dotfiles/.tmux.conf ~/
echo "Tmux installed"
echo "Installing Powerline-fonts"
cd ~/dotfiles/fonts/
./install.sh
cd ~
echo "Powerline fonts installed. Change your font in terminal option"
echo "Installing nodejs"
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
sudo npm install npm -g
echo "Nodejs installed"
echo "All files installed :D"
