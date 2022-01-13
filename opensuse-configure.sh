#!/bin/env bash

sudo zypper ref
#configure opensuse after fresh installtion
sudo zypper up -y
sudo zypper install --non-interactive emacs valgrind gcc-doc klavaro fcitx-pinyin \
fcitx-libpinyin fcitx-cloudpinyin fcitx-sunpinyin fcitx-googlepinyin
#this part is for chrome browser
sudo zypper addrepo https://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
sudo zypper refresh
sudo zypper install --non-interactive google-chrome-stable

sudo zypper install -y -t  pattern   devel_C_C++  devel_tcl  devel_kernel  devel_java  32bit devel_python3

sudo zypper  install -y git git-core git-doc  finger  clang lldb cmake  make gparted  gdb w3m lynx elinks cnf \
    neofetch screenfetch  the_silver_searcher minicom flex bison net-tools-deprecated  ncurses5-devel ncurses5-devel-32bit
gitk git-svn screen
 
sudo pip install doge
