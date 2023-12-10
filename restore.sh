#!/bin/bash

echo "Starting..."
echo ""

echo "Preparing backup restoration..."

rm -fr ~/.local/share/nvim/ ~/.local/state/nvim ~/.cache/nvim

echo "- Restoring..."
echo ""

cp -r backup/nvim ~/.config/

echo -e "\U2705 Cauldron has been restored successfully"
