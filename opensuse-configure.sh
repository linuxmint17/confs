#!/usr/bin/env bash
#configure opensuse after fresh installtion

update_sys()
{
    zypper ref
    zypper up -y
}

#this part is for chrome browser
install_chrome()
{
    zypper addrepo https://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
    zypper refresh
    zypper install --non-interactive google-chrome-stable
}

install_vscode()
{
    rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
    zypper ref && zypper install code

}

install_dev_env()
{
    sudo zypper install -y -t  pattern   devel_C_C++  devel_tcl  devel_kernel  devel_java  32bit devel_python3 &&  \
    sudo zypper  install -y git git-core valgrind git-doc finger  clang lldb cmake  make gparted  gdb w3m lynx elinks \
        the_silver_searcher minicom emacs flex bison net-tools-deprecated  ncurses5-devel ncurses5-devel-32bit \
    gitk git-svn screen
}

install_normal_env()
{
    sudo zypper install -y klavaro fcitx-pinyin \
    fcitx-libpinyin fcitx-cloudpinyin fcitx-sunpinyin fcitx-googlepinyin
}

install_funny_software()
{
    sudo zypper install -y screenfetch neofetch  fortune
    sudo pip install doge
}
 
