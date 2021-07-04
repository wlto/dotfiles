unsetopt PROMPT_SP

# geometry
source ~/Developer/.utils/geometry/geometry.zsh

# substring history search
source ~/Developer/.utils/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit
