#!/usr/bin/env bash

# Create symbolic links
ln -s -f ~/dotfiles/.vimrc ~/.vimrc

# Install silversearcher
sudo apt-get -y install silversearcher-ag

# Install bat
sudo apt -y install bat
mkdir -p ~/.local/bin
ln -s -f /usr/bin/batcat ~/.local/bin/bat
