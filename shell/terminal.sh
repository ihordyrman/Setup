#!/bin/bash

sudo apt install hstr -y
curl -fsSL https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh | bash -s -- JetBrainsMono
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget "https://raw.githubusercontent.com/rupa/z/master/z.sh"
mv z.sh ~/.z.sh

hstr --show-bash-configuration >> ~/.bashrc
