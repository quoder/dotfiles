Linux-Guide for Me
===================
1. Install Vim and use the files provided.
2. To fully use solarized colors in vim, you must exit from tmux (That's bad), and make your shells color palette of solarized using this git repo https://github.com/Anthony25/gnome-terminal-colors-solarized and follow its instructions. You should also install ncurses-term package and xterm. The .zshrc and .tmux.conf have necessary codes to enable solarized colors in vim.
3. To run python's frameworks and pip, simple install virtualenvironment and make useof venv for these purposes.
4. To install nodejs
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs
	sudo npm install npm -g
5. Sometimes, it happens that you enter a wrong command in the run a custom command instead of my shell in preferences which forces the terminal to exit. To change those commands without opening terminal you can use gconf-editor(which means you must have it by default). Open it using alt+f2 and go to apps->gnome-terminal->profiles and check the profile
