#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh | bash -s -- JetBrainsMono

wget "https://raw.githubusercontent.com/rupa/z/master/z.sh"
mv z.sh ~/.z.sh

echo "" >> ~/.bashrc
echo "discord_update() {" >> ~/.bashrc
echo "  curl -L -X GET --output \"/home/ihor/Downloads/discord-latest.deb\"  \"https://discord.com/api/download?platform=linux\"" >> ~/.bashrc
echo "  sudo dpkg -i /home/ihor/Downloads/discord-latest.deb && sudo rm /home/ihor/Downloads/discord-latest.deb" >> ~/.bashrc
echo "  echo \"New version installed\"" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "" >> ~/.bashrc
echo 'source ~/.z.sh' >> ~/.bashrc

source ~/.bashrc
