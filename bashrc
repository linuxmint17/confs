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

test -s ~/.alias && . ~/.alias || true
alias e='emacs'
alias youtube-dl='youtube-dl --proxy socks5://127.0.0.1:1080/'
alias cx='chmod +x'

# git command alias
alias gita='git add'
alias gitc='git commit'
alias gitl='git log'
alias gito='git checkout'
alias gits='git status'
alias gitp='git push'

alias emacs='emacs -nw'
alias free='free -h'
alias du='du -h'
#alias ssh='ssh -p 26780'
alias l='ls -lh'
alias cd..='cd ..'
alias o='less'
alias ll='ls -lah'
alias cls='printf "\033c"'
alias ping='ping -c 4 '
alias clang='clang -O0 -g -W'
alias clang++='clang++ -O0 -g -W'
alias gcc='gcc -O0 -g -W'
alias g++='g++ -O0 -g -w'
#export  PS1='\A\[$(ppwd)\]\u@\h:\W>'
#PS1='\[\033[0;32m\]\A[\u@\h]:\W>\[\033[0m\]'
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
export MAN_POOASIXLY_CORRECT=1

###for auto completion bash
if [ -f /etc/bash_completion ] ;then
    source /etc/bash_completion
    fi
### the following line for GPG config

export GPG_TTY=$(tty)
export PATH="~/bin":"$PATH"
upgrade(){
    sudo apt-get update ;
    sudo apt-get -y upgrade;
    echo "done";
}

#ipif(){
 #   if grep -P "(([1-9]\d{0,2})\.){3}(?2)"<<< "$1";then
	#	curl ipinfo.io/"$1"
  #      curl ip.cn/"$1"
   # else
#	ipawk=($(host "$1"|awk '/address/ { print $NF }'|head --lines 1))
#		curl ipinfo.io/${ipawk[1]}
	#	curl ipinfo.io
	#        curl ip.cn
 #   fi
#    echo

#}
#get your ip
function ipif(){
curl ip.cn;
}


#cd and ls
cl(){
    local dir="$1"
    if [[ -d "$dir" ]] ;then
	cd $dir >/dev/null && ls
    else
	echo "bash : cl : $dir Directorf not found "
    fi
}
      
#calculator
calc(){
    echo "scale=3 ; $@"|bc -l
    }
#create a hotspot named 'deepinhotspot' passwd is 'deepin15'
#hotspot(){
#    sudo  create_ap --daemon  wlp2s0 enp3s0 deepinhotspot deepin15 
#    echo 
#    }
#the following lines to solve "pressed  tab but n complete"
complete -cf sudo
complete -cf man
#search software
search(){
    sudo apt-cache search ${1};
}
#install software
ins(){
    sudo apt-get install ${1};
}
#search weather installed some software
qeury(){
    dpkg  -l |grep ${1};
}
#config bashrc file 
bashcnf(){
    emacs  ~/.bashrc &&  source ~/.bashrc;
}
#my new ps1 background color 
#export PS1="\[\033[0;44m\]\D{%Y/%m/%d} \t\[\033[0m\]\[\033[0;103m\] \[\033[0m\]\[\033[0;42m\]\u@\h\[\033[0m\]\n\[\033[0;45m\]\w\[\033[0m\]$"
#my  new PS1 with text color 
source ~/.git-prompt.sh
source ~/.git-completion.bash
#        bash: ps1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
export PS1='\[\033[0;32m\]\D{%Y/%m/%d} \t\[\033[0m\]\[\033[0;35m\]\u@\h\[\033[0m\]\[\033[0;33m\]\w\[\033[36m\]$(__git_ps1 " (%s)")\[\033[0m\]\n\$'
#PROMPT_DIRTRIM 


#a function from wikipedia 
#The following Bash function flashes the terminal (by alternately sending reverse and normal video mode codes) until the user presses a key.
function flasher ()
{
        while true;
        do printf \\e[?5h; sleep 0.1; printf \\e[?5l;
                read -s -n1 -t1 && break;
        done;
}
    

