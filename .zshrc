export CLICOLOR=1

# substring history search
source ~/Developer/.utils/terminal/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

# alias
alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias please="sudo"
alias cd-ref="cd ~/Developer/reflektor"
