#!/bin/bash

echo "Starting..."
echo ""

git pull

install_nvim() {
    echo "- Downloading Nvim latest version..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod +x nvim.appimage
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun --version
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    clean
    echo "- Nvim installed!"
    echo ""
}

backup() {
    mkdir backup

    echo -e "- Backing up current configuration..."

    cp -r ~/.config/nvim ./backup

    echo "- Backup up done!"
    echo ""
}

if [ $1 == "include-nvim" ]
then
    echo "Nvim installation requested"
    install_nvim
fi

if [ $1 == "backup" ]
then
    echo "Backup requested"
    backup
fi

echo "Preparing Cauldron installation..."

rm -fr ~/.local/share/nvim/ ~/.local/state/nvim ~/.cache/nvim

echo "- Installing..."
echo ""

cp -r nvim ~/.config/

echo -e "\U2705 Cauldron has been installed from latest version"
