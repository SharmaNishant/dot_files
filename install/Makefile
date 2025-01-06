# Ubuntu 24.04
#
# Author: Nishant Sharma <'nishants1994' at gmail>
#

.PHONY:
#	all
#	basics
#	update
#	upgrade
#	graphics
	setup_bash
	setup_vim
	setup_tmux
	powerline
	powerline_vim
	powerline_tmux

all:
	@echo "Installation of ALL targets"
	make basics
	make upgrade
	make graphics
	make media
	make setup_bash

update:
	sudo apt update

upgrade:
	sudo apt -y upgrade

basics:
	make update
	sudo apt -y install software-properties-common build-essential \
	checkinstall wget curl git tree tldr hunspell rsync neovim ffmpeg \
	openssh-client openssh-server automake cmake make bash-completion \
	unzip bottom ufw rename mc tmux ripgrep

graphics:
	sudo apt -y install gimp graphviz inkscape

media:
	sudo apt -y install vlc libavcodec-extra blender kdenlive

setup_bash:
	{ echo "# Customizations to bash"; } >> ~/.bashrc
	{ echo "source ~/vcs/dot_files/bash/customs"; } >> ~/.bashrc
	{ echo "source ~/vcs/dot_files/bash/aliases"; } >> ~/.bashrc
	{ echo "source ~/vcs/dot_files/bash/functions"; } >> ~/.bashrc
	{ echo "DOCKER_CONFIG=\${DOCKER_CONFIG}:-\${HOME}/.docker"; } >> ~/.bashrc
	@echo "Setting up links to vimrc and tmux.conf"
	ln -s ~/vcs/dot_files/nvim ~/.config/nvim
	ln -s ~/vcs/dot_files/vim/.vimrc ~/.vimrc
	ln -s ~/vcs/dot_files/tmux/.tmux.conf ~/.tmux.conf

setup_zsh:
	{ echo "# Customizations to zsh"; } >> ~/.zshrc
	{ echo "source ~/vcs/dot_files/bash/customs"; } >> ~/.zshrc
	{ echo "source ~/vcs/dot_files/bash/aliases"; } >> ~/.zshrc
	{ echo "source ~/vcs/dot_files/bash/functions"; } >> ~/.zshrc

powerline:
	sudo pip install git+https://git@github.com/powerline/powerline
	# update fonts
	git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts
	/tmp/fonts/install.sh
	# clean-up a bit
	rm -rf /tmp/fonts
	@echo "Please update terminal fonts"

powerline_vim:
	echo "\" Powerline related settings" >> ~/.vimrc
	echo "python from powerline.vim import setup as powerline_setup" >> ~/.vimrc
	echo "python powerline_setup()" >> ~/.vimrc
	echo "python del powerline_setup" >> ~/.vimrc
	echo "" >> ~/.vimrc
	echo "set laststatus=2 \" Always display the statusline in all windows" >> ~/.vimrc
	echo "set noshowmode \" Hide the default mode text (e.g. -- INSERT -- below the statusline)" >> ~/.vimrc

powerline_tmux:
	echo "# Powerline-status" >> ~/.tmux.conf
	echo "run-shell \"powerline-daemon -q\"" >> ~/.tmux.conf
	echo "run \"powerline-config tmux setup\"" >> ~/.tmux.conf

# notes to self
# While install synergy from source, had to unzip files in the ext directory
#
# Peek is discontinued. Pypeek could be an alternative if needed
#
# Gnome-boxes
# sudo usermod -a -G kvm $USER
#


# docker pull nginx
# docker pull nextcloud
