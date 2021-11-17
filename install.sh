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

echo "Done :)"
exit 0
