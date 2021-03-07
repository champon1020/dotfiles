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
if [[ "$OSTYPE" == "darwin"* ]]; then
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# color for auto completion list
zstyle ':completion:*' list-colors ''

# shell style
autoload -Uz colors && colors
PROMPT='%F{blue}%m@%n%F{magenta}%*%F{cyan}%~%F{yellow}$%f '

# init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# init direnv
if command -v direnv 1>/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

# command aliases
alias ..='cd ../'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias less='less'
alias cat='cat'
alias gs='git status'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i -r'
alias pb='bash ~/.scripts/copy.sh'
alias swggen='sh /opt/swagger-codegen/exec.sh'
alias opngen='sh /opt/openapi-generator/exec.sh'
alias emacs="emacs -nw"

neofetch
