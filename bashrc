# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

#update alias for convenience
test -s ~/.alias && . ~/.alias || true

#some color sequence for text 
#Sequence     Text Color     Sequence       Text Color
#\033[0;30m     Black        \033[1;30m     Dark  Gray
#\033[0;31m     Red          \033[1;31m     Light Red
#\033[0;32m     Green        \033[1;32m     Light Green
#\033[0;33m     Brown        \033[1;33m     Yellow
#\033[0;34m     Blue         \033[1;34m     Light Blue
#\033[0;35m     Purple       \033[1;35m     Light Purple
#\033[0;36m     Cyan         \033[1;36m     Lgitht Cyan
#\033[0;37m     Light Grey   \033[1;37m     Write
#escape Sequences used To Set Baktground Color
#Sequence    Background Color     Sequence       Background Color
#\033[0;40m     Black             \033[0;44m      Blue
#\033[0;41m     Red               \033[0;45m      Purple
#\033[0;42m     Green             \033[0;46m      Cyan
#\033[0;43m     Brown             \033[0;47m      Light Grey

#export  PS1='\A\[$(ppwd)\]\u@\h:\W>'
#PS1='\[\033[0;32m\]\A[\u@\h]:\W>\[\033[0m\]'
#PS1 for git prompt
source ~/.git-prompt.sh
source ~/.git-completion.bash

export PS1='\[\033[0;32m\]\D{%Y/%m/%d} \t\[\033[0m\]\[\033[0;35m\]\u@\h\[\033[0m\]\[\033[0;33m\]\w\[\033[36m\]$(__git_ps1 " (%s)")\[\033[0m\]\n\$'

###for auto completion bash
if [ -f /etc/bash_completion ] ;then
    source /etc/bash_completion
fi

#the following lines to solve "pressed twice tab but not complete"
export MAN_POOASIXLY_CORRECT=1
complete -cf sudo
complete -cf man

### the following line for GPG config
export GPG_TTY=$(tty)
###
export PATH="~/bin":"$PATH"

upgrade()
{
    sudo zypper -y update
    echo "done";
}

#ipif(){
#if grep -P "(([1-9]\d{0,2})\.){3}(?2)"<<< "$1";then
#   curl ipinfo.io/"$1"
#      curl ip.cn/"$1"
#else
#   ipawk=($(host "$1"|awk '/address/ { print $NF }'|head --lines 1))
#       curl ipinfo.io/${ipawk[1]}
#   curl ipinfo.io
#        curl ip.cn
#fi
#echo "done"
#}

#get your ip
function getip()
{
    curl ip.sb;
}

#cd and ls
cl()
{
    local dir="$1"
    if [[ -d "$dir" ]] ;then
    cd $dir >/dev/null && ls
    else
    echo "bash : cl : $dir Directorf not found "
    fi
}
      
#calculator
calc()
{
    echo "scale=3 ; $@"|bc -l
}

#create a hotspot named 'deepinhotspot' passwd is 'deepin15'
#hotspot()
#{
#   sudo  create_ap --daemon  wlp2s0 enp3s0 deepinhotspot deepin15 
#   echo "done"
#}

#search software
search1()
{
    sudo apt-cache search ${1};
}
search()
{
    sudo zypper search ${1};
}

#install software
ins1()
{
    sudo apt-get install ${1};
}
ins()
{
    sudo zypper in -y${1};
}

#search weather installed some software
qeury()
{
    dpkg  -l |grep ${1};
}

#config bashrc file 
bashcnf()
{
    emacs  ~/.bashrc &&  source ~/.bashrc;
}

#PROMPT_DIRTRIM 

#a function from wikipedia 
#The following Bash function flashes the terminal (by alternately sending reverse and normal video mode codes) until the user presses a key.
function flasher()
{
    while true;
        do printf \\e[?5h; sleep 0.1; printf \\e[?5l;
            read -s -n1 -t1 && break;
    done;
}


export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'

# for rust install accelerate
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

