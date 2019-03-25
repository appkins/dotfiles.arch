#======================================
#
#
#   ███████╗ ██████╗ ███████╗███╗   ██╗
#   ╚══███╔╝██╔════╝ ██╔════╝████╗  ██║
#     ███╔╝ ██║  ███╗█████╗  ██╔██╗ ██║
#    ███╔╝  ██║   ██║██╔══╝  ██║╚██╗██║
#   ███████╗╚██████╔╝███████╗██║ ╚████║
#   ╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝
#                                      
#                                      
#=======================================                                                                      

# load zgen
source "/usr/share/zsh/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    
    zgen load ${ZSH_HOME}/env
    zgen load ${ZSH_HOME}/core

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
    # zgen load bhilburn/powerlevel9k powerlevel9k

    # completions
    zgen load zsh-users/zsh-completions src

    # save all to init script
    zgen save
fi