autoload -U zmv

zman() { PAGER="less -g -s '+/^       "$1"'" man zshall; }

r() {
  local time=$1; shift
  sched "$time" "notify-send --urgency=critical 'Reminder' '$@'; ding";
}; compdef r=sched

# aliases common to all shells
alias q=exit
alias clr=clear
alias sudo='sudo '

alias downgrade='DOWNGRADE_FROM_ALA=1 downgrade '

alias neovim='nvim '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'

# notify me before clobbering files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias gurl='curl --compressed'
alias mkdir='mkdir -p'
alias rsyncd='rsync -va --delete'   # Hard sync two directories
alias wget='wget -c'                # Resume dl if possible

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ag="noglob ag -p $XDG_CONFIG_HOME/ag/agignore"
alias rg='noglob rg'

# For example, to list all directories that contain a certain file: find . -name
# .gitattributes | map dirname
alias map="xargs -n1"

# Convenience
alias mk=make
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 \
    --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias settime='timedatectl set-timezone America/Chicago'

# Azure
AKS_RG=ips-k8s-rg
AKS_CN=ips-k8s
alias aks-connect="az aks browse --resource-group ${AKS_RG} --name ${AKS_CN}"
alias kube-dashboard="az aks browse --resource-group ${AKS_RG} --name ${AKS_CN}"

alias docker-clean='docker image prune -a -f'
alias docker-prune='docker system prune --volumes -f'
alias docker-full-clean='docker-prune && docker-clean'
alias night-mode='redshift -l 30.42:-87.21'
alias vscode='/opt/visual-studio-code/code'

take() { mkdir "$1" && cd "$1"; }; compdef take=mkdir
hex()  { echo -n $@ | xxd -psdu; }
