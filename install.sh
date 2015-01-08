#!/bin/bash
# link dotfiles to home directory

# get the OS type
OS=$(uname -s)

# get current working directory
CWD=$(cd "$(dirname "$0")"; pwd)

# For zsh
rm ~/.zshrc
ln -s $CWD/.zshrc ~/.zshrc

# For vim
rm ~/.vimrc
ln -s $CWD/.vimrc ~/.vimrc

if [ $OS = "Darwin" ]; then
	# For Sublime Text 3
	_IFS_=$IFS
	IFS="|"
	SUBLIME="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
	rm $SUBLIME/Python.sublime-build
	ln -s "$CWD/Sublime Text 3/Python.sublime-build" $SUBLIME/Python.sublime-build
	rm $SUBLIME/Preferences.sublime-settings
	ln -s "$CWD/Sublime Text 3/Preferences.sublime-settings" $SUBLIME/Preferences.sublime-settings
	rm $SUBLIME/Emmet.sublime-settings
	ln -s "$CWD/Sublime Text 3/Emmet.sublime-settings" $SUBLIME/Emmet.sublime-settings
	IFS=$_IFS_
else
	echo "Linux no need Sublime Text 3"
fi

