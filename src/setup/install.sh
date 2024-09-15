#!/bin/sh
set -e

echo "Activating feature 'setup'"

echo "Downloading dependencies"
apt-get update -y
apt-get upgrade -y
apt-get install curl -y

echo "Downloading neovim 0.10.1"

curl -sL https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz | tar -xzC /usr/local >&1

cd /usr/local
mv nvim-linux64 nvim
ln -sf /usr/local/nvim/bin/nvim /usr/local/bin/nvim

echo "Downloading tmux and fish"
apt-get install tmux fish -y
