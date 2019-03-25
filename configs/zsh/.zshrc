# ~/.zshrc

export ZSH_ROOT=/usr/share/zsh
export ZSH_HOME=${HOME}/.zsh

export DOTFILES=$HOME/.dotfiles

#export ZSH_PLUGINS=/usr/share/zsh/plugins

source ${ZSH_HOME}/_init

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
   ${ZSH_HOME}/functions
    "${fpath[@]}"
)

source "${ZSH_HOME}/zgen-powerlevel9k.zsh"

source "${ZSH_HOME}/zgen-load.zsh"

# Archlabs Neofetch displays system info
# al-info
