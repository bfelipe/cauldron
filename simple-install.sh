#!/bin/bash

COMPATIBLE_VERSION="NVIM v0.9.5"
CURRENT_NVIM_VERSION=$(nvim --version | grep NVIM)

echo "Starting..."
echo "Preparing Cauldron installation..."
git pull
rm -fr ~/.local/share/nvim/ ~/.local/state/nvim ~/.cache/nvim
echo "- Installing..."
cp -r nvim ~/.config/
echo -e "\U2705 Cauldron has been installed from latest version"
