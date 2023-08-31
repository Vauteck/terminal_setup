#!/bin/bash

# prerequisites for building neovim
sudo apt-get update
sudo apt-get install -y ninja-build gettext cmake unzip curl
sudo apt-get install -y tmux

# neovim build
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install
cd -

# install .tmux.conf file
cp .tmux.conf ~
