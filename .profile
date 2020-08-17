# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# gcp path
export GOOGLE_APPLICATION_CREDENTIALS="/home/champon1020/Documents/keys/gcp/firebase/champon-myblog-6111e7e563e3.json"

# change stack size
ulimit -s 1073741824

# golang path
#export GOPATH="/home/champon1020/.go"
export GOPATH="/home/champon1020/repos/go"
export GOROOT="/usr/local/go"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# matlab path
export PATH=~/matlab/bin:$PATH

# conda bin path
export PATH=~/anaconda3/bin:$PATH

# fanatio path
export FANATIO_PATH="papers"
