#!/bin/env bash
#configure opensuse after fresh installtion
sudo zypper up -y
sudo zypper install --non-interactive emacs git clang valgrind gcc gcc-doc klavaro fcitx-pinyin \
fcitx-libpinyin fcitx-cloudpinyin fcitx-sunpinyin fcitx-googlepinyin
#this part is for chrome browser
sudo zypper addrepo https://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
sudo zypper refresh
sudo zypper install --non-interactive google-chrome-stable
#this part is for sublimetext3 ;can call it by subl from terminal
sudo rm - --import "https://download.sublimetext.com/sublimehq-rpm-pub.gpg"
sudo zypper addrepo -g -f https://download.sublimetext.com/rpm/stable/x86_64/sulime-text.repo
sudo zypper install sublime-text
