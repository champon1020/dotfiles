# command aliases
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
alias activate="source ~/.pyenv/versions/miniconda3-4.7.12/bin/activate"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
