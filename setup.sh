#!/bin/bash
echo "					++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "					+  This script will install necessary files for your debian based distro         +"
echo "					+                                                                                +"
echo "					+                 Now downloading files from quoder/dotfiles                     +"
echo "					+                                                                                +"
echo "					++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
cd ~
git clone https://github.com/quoder/dotfiles.git
cd dotfiles
git submodule update --init --recursive
#
#
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+             Installing vim with quoder's vimrc                +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
sudo apt-get update
sudo apt-get install vim
mkdir .vim
cp -a  ~/dotfiles/vimfiles/. ~/.vim/
cp ~/dotfiles/.vimrc ~/
#
#
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+      Vim Installed, Now installing some dependencies          +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
sudo apt-get install dconf-cli
sudo apt-get install xterm
sudo apt-get install ncurses-term
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install python-setuptools
sudo apt-get install python-dev
sudo apt-get install python-virtualenv
sudo apt-get install libjpeg
sudo apt-get install libjpeg-dev
sudo apt-get install libfreetype6
sudo apt-get install libfreetype6-dev 
sudo apt-get install zlib1g-dev
sudo apt-get install dpkg-dev
sudo apt-get install build-essential
#
#
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+      Dependencies installed. Now installing zsh               +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp ~/dotfiles/.zshrc ~/
#
#
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+         Please refer the docs to make oh-my-zsh your default shell             +"
echo "+                                                                                +"
echo "+                 Now installing grub-customizer                                 +"
echo "+                                                                                +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
#
#
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+   grub-customizer installed, now downloading Sublime Text     +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
cd ~/Downloads/
wget -c http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
sudo dpkg -i sublime-text_build-3083_amd64.deb
sudo apt-get install -f
#
#
echo "++++++++++++++++++++++++++++++++"
echo "+                              +"
echo "+        Installing Tmux       +"
echo "+                              +"
echo "++++++++++++++++++++++++++++++++"
cd ~
sudo apt-get install tmux
cp ~/dotfiles/.tmux.conf ~/
#
#
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+      Tmux installed. Now downloading Powerline fonts          +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
cd ~/dotfiles/fonts/
./install.sh
cd ~
#
#
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+     Powerline fonts installed. Change your font in terminal option             +"
echo "+                                                                                +"
echo "+                 Now installing node-js 			                               +"
echo "+                                                                                +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
sudo npm install npm -g
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                               +"
echo "+      Node-js installed. Installing files done (almost :D)     +"
echo "+                                                               +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#
#
#SIGN

echo "                                             ___________________     "
echo "                                             |\          /|    /     "
echo "       Made By:                              | \        / |   /      "
echo "                                             |  \      /  |  /       "
echo "                                             |   \    /   | /        "
echo "              M K M                          | M  \  /  K |/  M      "
echo "                                             |     \/     |\         "
echo "                                             |            | \        "
echo "                                             |            |  \       "
echo "                                             |            |   \      "
echo "                                             |____________|____\     "