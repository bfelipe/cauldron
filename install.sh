#!/bin/bash

COMPATIBLE_VERSION="NVIM v0.9.4"
CURRENT_NVIM_VERSION=$(nvim --version | grep NVIM)

echo "Starting..."

install_nvim() {
    read -p "Current nvim installed is $CURRENT_NVIM_VERSION, the compatible version is $COMPATIBLE_VERSION, do you wish to update nvim ? (y/n) " UPDATE_NVIM_BOOL
    if [ $UPDATE_NVIM_BOOL == "y" ];
    then
        echo "- Downloading Nvim latest version..."
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod +x nvim.appimage
        ./nvim.appimage --appimage-extract
        ./squashfs-root/AppRun --version
        sudo mv squashfs-root /
        sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
        clear
        source ~/.bashrc
        echo "- Nvim installed!"
    fi
}

backup() {
    read -p "Would you like to backup your current nvim config before continue installation? (y/n) " BACKUP_BOOL
    if [ $BACKUP_BOOL == "y" ];
    then
        mkdir backup
        echo "- Backing up current configuration..."
        cp -r ~/.config/nvim ./backup
        echo "- Backup up done!"
    fi
}

install_cauldron() {
    echo "Preparing Cauldron installation..."
    git pull
    rm -fr ~/.local/share/nvim/ ~/.local/state/nvim ~/.cache/nvim
    echo "- Installing..."
    cp -r nvim ~/.config/
    echo -e "\U2705 Cauldron has been installed from latest version"
}


if [ "$CURRENT_NVIM_VERSION" == "$COMPATIBLE_VERSION" ];
then
    backup
    install_cauldron
else
    install_nvim
    backup
    install_cauldron
fi
