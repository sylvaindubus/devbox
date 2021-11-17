#!/bin/bash

# Add safeguards to bash script
set -euo pipefail

# Add zsh configuration
echo 'Creating a new symbolic link for zsh'
rm -f ~/.zshrc
ln -s "${PWD}/config/.zshrc" "${HOME}/.zshrc"

# Add vim configuration
echo 'Creating a new symbolic link for vim'
rm -f ~/.vimrc
ln -s "${PWD}/config/.vimrc" "${HOME}/.vimrc"

# Add Hyper.js configuration
echo 'Creating a new symbolic link for Hyper.js'
rm -f ~/.hyper.js
ln -s "${PWD}/config/.hyper.js" "${HOME}/.hyper.js"

echo "Done :)"
exit 0
