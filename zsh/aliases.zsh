# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# List files
alias ls='ls -FG'
alias ll='ls -FGl'
alias la='ls -FGall'

# Editors
alias v='vim'
alias c='code'

# Git
alias g='git'

# Tmux
alias tm='tmux'
alias tma='tmux attach -t'
alias tmk='tmux kill-session -t'
alias tml='tmux list-sessions'
alias tmn='tmux new -s'

# Docker
alias d='docker'

# Dotfiles
alias dot='cd ~/dotfiles'

# Homebrew
alias brewu='brew update && brew upgrade && brew autoremove && brew cleanup --prune=all'

# Clear screen
alias cl='clear'

# Quit
alias :q='exit'

# Reload
alias reload='source ~/.zshrc'
