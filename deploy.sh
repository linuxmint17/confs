#!/bin/bash
mkdir -p ~/.vim
cp ./vimrc ~/.vimrc

cp ./git-prompt.sh ~/.git-prompt.sh
cp ./git-completions.bash ~/.git-completoins.bash

cp ./alias ~/.alias
cp ./bashrc ~/.bashrc
cp ./profile ~/.profile

cp ./git-commit-template.txt ~/.git-commit-template.txt
cp ./gitconfig ~/.gitconfig

mkdir -p ~/.ssh
cp ./publiic-keys/* ~/.ssh/*
cp ./ssh-config ~/.ssh/config
