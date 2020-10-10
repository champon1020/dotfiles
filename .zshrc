# load dotfiles
# load dotfiles for bash
ZSH_DOTFILES=(.aliases .exports .styles .zsh_styles)
for file in ${ZSH_DOTFILES[@]}; do
	if [ -f $HOME/${file} ]; then
		. $HOME/${file}
	else
    echo "$HOME/$file is not exist"
  fi
done

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# ignore just previous command
setopt hist_ignore_dups
# don't leave same commands as history
setopt hist_ignore_all_dups
# modify spell mistakes
setopt correct
# no beep sound
setopt no_beep

# enable plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# color for auto completion list
zstyle ':completion:*' list-colors ''
