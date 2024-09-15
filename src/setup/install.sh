#!/bin/sh
set -e

echo "Activating feature 'setup'"

echo "Downloading dependencies"
apt-get update -y
apt-get upgrade -y
apt-get install curl -y

echo "Downloading neovim 0.10.1"

curl -sL https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz | tar -xzC /usr/local 2>&1

cd /usr/local
mv nvim-linux64 nvim
ln -sf /usr/local/nvim/bin/nvim /usr/local/bin/nvim

echo "Downloading tmux and fish"
apt-get install tmux fish -y

echo "Downloading starship"

curl -sL https://github.com/starship/starship/releases/download/v1.20.1/starship-x86_64-unknown-linux-gnu.tar.gz | tar -xzC /usr/local 2>&1

cd /usr/local
mv starship-x86_64-unknown-linux-gnu/starship /usr/local/bin/
rm -r starship-x86_64-unknown-linux-gnu
