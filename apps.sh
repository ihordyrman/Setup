#!/bin/bash

sudo apt-get update

sudo add-apt-repository --remove ppa:yann1ck/onedrive
sudo apt-get update
sudo apt-get install -y --no-install-recommends --no-install-suggests onedrive

sudo apt-get install -y \
    vlc \
    iptables-persistent \
    qbittorrent \
    libxcb-xinerama0 libxcb-cursor0 libnss3 \
    zstd \
    htop \
    mpv \
    tlp \
    xclip \
    neovim

sudo snap install todoist
sudo snap install ghostty --classic
sudo snap install obsidian --classic
sudo snap install rider --classic
sudo snap install discord
sudo snap install signal-desktop
sudo snap install telegram-desktop
sudo snap install steam
sudo snap install slack

sudo dpkg --configure -a

echo "Done!"