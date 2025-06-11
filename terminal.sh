#!/bin/bash

wget "https://raw.githubusercontent.com/rupa/z/master/z.sh"
mv z.sh ~/.z.sh
echo 'source ~/.z.sh' >> ~/.bashrc

source ~/.bashrc
