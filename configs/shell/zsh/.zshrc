# ~/.zshrc

export DOTFILES=$HOME/.dotfiles

#export ZSH_PLUGINS=/usr/share/zsh/plugins

source ~/.zsh/_init

# not running interactively then bail
[[ $- != *i* ]] && return

# shell opts
setopt autocd
setopt completealiases
setopt histignorealldups
setopt histfindnodups
setopt incappendhistory
setopt sharehistory

# Function paths
fpath=(
    ~/.zsh/functions
    "${fpath[@]}"
)

source "${HOME}/.zsh/zgen-powerlevel9k.zsh"

source "${HOME}/.zsh/zgen-load.zsh"

# Archlabs Neofetch displays system info
# al-info
