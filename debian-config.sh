#!/usr/bin/env bash

#configure opensuse after fresh installtion

update_sys()
{
    apt-get update
    apt-get upgrade
}

#this part is for chrome browser

install_chrome()
{
}

install_vscode()
{

}

install_dev_env()
{

    apt-get update
    apt-get install build-essential git cmake gdb
}

install_input_method()
{
}

install_funny_software()
{
    apt-get update
    apt-get install neofetch fortune fortunes-zh
}
 
