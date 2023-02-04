#!/bin/zsh
alias res="reset"
alias q="exit"
alias c="clear"
alias df="df -ahiT --total"
alias mkdir="mkdir -pv"
alias ls="logo-ls"
alias lsa="logo-ls -a"
alias lsl="logo-ls -l"
alias free="free -h"
alias wget="wget -c"
alias grep='grep --color=auto'
alias tch='touch'
alias look-fonts='pango-list --variations'

# Configs
# Zsh
alias zconf="nvim ~/.zshrc"
alias zalias="nvim ~/.config/zsh/alias.zsh"

# Picom
alias picom-conf="nvim ~/.config/picom.conf"

# Gentoo
alias genup=" sudo emaint --auto sync; sudo emerge --ask --verbose --update --deep --newuse @world"
alias genclean="sudo emerge --ask --verbose --depclean"
alias gendel="sudo emerge --ask --unmerge"
alias geninstall="sudo emerge --ask"

# Arch, Artix, Arco Linux
alias it='sudo pacman -S'
alias del='sudo pacman -Rscn'
alias se='sudo pacman -Si'
alias sy='sudo pacman -Sy'
alias up="sudo pacman -Syyuu"
alias del-orp='sudo pacman -Rsn $(pacman -Qdtq)'

# Debian family
alias aptse='sudo apt search "^$2" | grep $1'
alias aptupdate='sudo apt update'
alias aptupgrade='sudo apt upgrade'
alias aptin='sudo apt install'

# FVWM
alias fvconf='nvim ~/.fvwm/settings/settings.sh'
# KITTY
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
