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
alias ngrok="~/Developer/.utils/terminal/ngrok/ngrok"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ####################
# prompt customization

# git branching in prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'on branch %b' 
setopt PROMPT_SUBST

PROMPT='%1d ${vcs_info_msg_0}$ '

# ####################
