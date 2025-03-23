alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# eza
alias ls="eza --icons=always"

# fnm shell setup
# sudo ln -s $(which node) /usr/local/bin/node
eval "$(fnm env --use-on-cd --shell zsh)"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"
