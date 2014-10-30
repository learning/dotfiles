#!/bin/bash
# link dotfiles to home directory

# get current working directory
cwd=$(cd "$(dirname "$0")"; pwd)

# For zsh
if [ ! -f "~/.zshrc" ]; then
	rm ~/.zshrc
fi
ln -s $cwd/.zshrc ~/.zshrc

# For vim
if [ ! -f "~/.vimrc" ]; then
	rm ~/.vimrc
fi
ln -s $cwd/.vimrc ~/.vimrc