#!/bin/bash

sudo apt install hstr -y
curl -fsSL https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh | bash -s -- JetBrainsMono
curl -s https://ohmyposh.dev/install.sh | bash -s

wget "https://raw.githubusercontent.com/rupa/z/master/z.sh"
mv z.sh ~/.z.sh

hstr --show-bash-configuration >> ~/.bashrc

cat >> ~/.bashrc << 'EOF'

alias k='kubectl'

discord_update() {
  curl -L -X GET --output "/home/ihor/Downloads/discord-latest.deb"  "https://discord.com/api/download?platform=linux"
  sudo dpkg -i /home/ihor/Downloads/discord-latest.deb && sudo rm /home/ihor/Downloads/discord-latest.deb
  echo "New version installed"
}

export HSTR_CONFIG=hicolor
bind '"\C-r": "\C-a hstr -- \C-j"'

eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/cert.omp.json)"

source ~/.z.sh

EOF

source ~/.bashrc
