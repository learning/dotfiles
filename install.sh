#!/bin/bash
# link dotfiles to home directory

# get current working directory
CWD=$(cd "$(dirname "$0")"; pwd)

# For zsh
rm ~/.zshrc
ln -s $CWD/.zshrc ~/.zshrc

# For vim
rm ~/.vimrc
ln -s $CWD/.vimrc ~/.vimrc

# For Sublime Text 3
_IFS_=$IFS
IFS="|"
SUBLIME="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
rm $SUBLIME/Python.sublime-build
ln -s "$CWD/Sublime Text 3/Python.sublime-build" $SUBLIME/Python.sublime-build
rm $SUBLIME/Preferences.sublime-settings
ln -s "$CWD/Sublime Text 3/Preferences.sublime-settings" $SUBLIME/Preferences.sublime-settings
IFS=$_IFS_
