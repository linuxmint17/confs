# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# Most applications support several languages for their output.
# To make use of this feature, simply uncomment one of the lines below or
# add your own one (see /usr/share/locale/locale.alias for more codes)
# This overwrites the system default set in /etc/sysconfig/language
# in the variable RC_LANG.
#
#export LANG=de_DE.UTF-8	# uncomment this line for German output
#export LANG=fr_FR.UTF-8	# uncomment this line for French output
#export LANG=es_ES.UTF-8	# uncomment this line for Spanish output


my_fortune()
{
        echo
        echo "======================== Quote Of The Day ========================"
        echo
        if [[ -f /usr/bin/fortune ]] ;then
        fortune
        else
#        echo "Bad lucky!"
        echo "Not fortune at all!"
        fi
        echo
        echo "=================================================================="
        echo
}

# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)


#if [ -x /usr/bin/fortune ] ; then
#    echo
#    /usr/bin/fortune
#    echo
#fi
#

my_fortune

# for ssh -agent usage

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add ~/.ssh/foxmail_id_ed25519 ~/.ssh/outlook_id_ed25519
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add ~/.ssh/foxmail_id_ed25519 ~/.ssh/outlook_id_ed25519
fi

unset env


# for gpg working
# User specific environment and startup programs
export GPG_TTY=$(tty)
