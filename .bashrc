# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# load dotfiles for bash
BASH_DOTFILES=(.bash_aliases .bash_exports .bash_styles)
for file in ${BASH_DOTFILES[@]}; do
		if [ -f $HOME/${file} ]; then
				. $HOME/${file}
		fi
done

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

# init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
