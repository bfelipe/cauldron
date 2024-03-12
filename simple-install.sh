#!/bin/bash

echo "Starting..."
echo "Preparing Cauldron installation..."
git pull
rm -fr ~/.local/share/nvim/ ~/.local/state/nvim ~/.cache/nvim
echo "- Installing..."
cp -r ./cauldron/nvim ~/.config/
echo -e "\U2705 Cauldron has been installed from latest version"
