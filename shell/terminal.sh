#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh | bash -s -- JetBrainsMono

wget "https://raw.githubusercontent.com/rupa/z/master/z.sh"
mv z.sh ~/.z.sh
echo 'source ~/.z.sh' >> ~/.bashrc

source ~/.bashrc
