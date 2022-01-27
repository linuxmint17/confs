#!/bin/bash
mkdir -p ~/.vim
cp vimrc ~/.vimrc

cp git-prompt.sh ~/.git-prompt.sh
cp git-completion.bash ~/.git-completion.bash

cp alias ~/.alias
cp bashrc ~/.bashrc
cp profile ~/.profile

cp git-commit-template.txt ~/.git-commit-template.txt
cp gitconfig ~/.gitconfig

mkdir -p ~/.ssh
cp public-keys/* ~/.ssh/
touch ~/.ssh/config
cp ssh-config ~/.ssh/config
chmod 600 ~/.ssh/config
cp zshrc ~/.zshrc

source ~/.bashrc
