#!/bin/bash

# Add safeguards to bash script
set -euo pipefail

# Add zsh configuration
echo 'Creating a new symbolic link for zsh'
rm ~/.zshrc
ln -s "${PWD}/config/.zshrc" "${HOME}/.zshrc"

# Add vim configuration
echo 'Creating a new symbolic link for vim'
rm ~/.vimrc
ln -s "${PWD}/config/.vimrc" "${HOME}/.vimrc"

# Add vscode configuration
vscodeLinuxSettings="${HOME}/.config/Code/User/settings.json"
vscodeMacSettings="${HOME}/Library/Application Support/Code/User/settings.json"
if [ -e "$vscodeLinuxSettings" ]; then
	echo 'Creating a new symbolic link for vscode'
	rm "$vscodeLinuxSettings"
	ln -s "${PWD}/config/vscode.json" "$vscodeLinuxSettings"
elif [ -e "$vscodeMacSettings" ]; then
	echo 'Creating a new symbolic link for vscode'
	rm "$vscodeMacSettings"
	ln -s "${PWD}/config/vscode.json" "$vscodeMacSettings"
fi

echo "Done :)"
exit 0
