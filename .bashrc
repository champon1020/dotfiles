# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/champon1020/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/champon1020/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/champon1020/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/champon1020/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# terminal decoration
HISTTIMEFORMAT='%Y-%m-%d'
PS1='\[\033[34m\]\h@\u:\[\033[00m\]\[\033[35m\](\t)\[\033[00m\]\[\033[36m\]\W\[\033[00m\]\[\033[33m\]\$\[\033[00m\] '

# ascii arts
neofetch

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/champon1020/.sdkman"
[[ -s "/home/champon1020/.sdkman/bin/sdkman-init.sh" ]] && source "/home/champon1020/.sdkman/bin/sdkman-init.sh"

# command alias
alias rm='rm -i -r'
alias ..='cd ../'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias la='ls -a'
alias gs='git status'
alias mv='mv -i'
alias cp='cp -i'
alias npms='sudo npm start'
alias yarns='sudo yarn start'
alias swg-gen='sh /opt/swagger-codegen/exec.sh'
alias opn-gen='sh /opt/openapi-generator/exec.sh'
alias emacs="emacs -nw"

if typeset -A &>/dev/null; then
  #can use
  typeset -A _paths
  typeset _results
  while read -r _p; do
    if [[ -n ${_p} ]] && (( ${_paths["${_p}"]:-1} )); then
      _paths["${_p}"]=0
      _results=${_results}:${_p}
    fi
  done <<<"${PATH//:/$'\n'}"
  PATH=${_results/:/}
  unset -v _p _paths _results
else
  #cannot use -> awk
  typeset _p=$(awk 'BEGIN{RS=":";ORS=":"} !x[$0]++' <<<"${PATH}:")
  PATH=${_p%:*:}
  unset -v _p
fi

# golang path
export GOPATH="/home/champon1020/repos/go"
export GOROOT="/usr/local/go"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# matlab path
export PATH=~/matlab/bin:$PATH

# conda bin path
export PATH=~/anaconda3/bin:$PATH

# fanatio path
export FANATIO_PATH="papers"
