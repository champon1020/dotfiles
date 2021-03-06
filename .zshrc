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
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242,bg=cyan"

# git-prompt
source ~/.zsh/git-prompt.sh

# git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# prompt option
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# color for auto completion list
zstyle ':completion:*' list-colors ''

# prompt style
autoload -Uz colors && colors
#setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")$f\$ '
setopt PROMPT_SUBST ; PS1='%F{magenta}[%*] %F{blue}%n@%m:%F{cyan}%~ %F{red}$(__git_ps1 "(%s)")
%F{yellow}$%f '

# init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# init direnv
if command -v direnv 1>/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/macuser/Downloads/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/macuser/Downloads/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/macuser/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/macuser/Downloads/google-cloud-sdk/completion.zsh.inc"; fi

# command aliases
alias ..='cd ../'
alias ls='ls'
alias ll='ls -ag'
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
alias texc="sh ~/.scripts/tex-compile.sh"
alias emacsc="sh ~/.scripts/emacs-byte-compile.sh "
alias gitbd="git branch --merged|egrep -v '\*|develop|main'|xargs git branch -d"

neofetch
