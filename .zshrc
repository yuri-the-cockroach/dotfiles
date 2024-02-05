# If you come from bash you might have to change your $PATH.
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/scripts
export XDG_DATA_HOME=~/.local/share
export XDG_CONFIG_HOME=~/.config

export TERMINAL=kitty
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
ZSH_THEME="lg"
source $ZSH/oh-my-zsh.sh

alias sudo='sudo '
alias update="flatpak update -y; pacman -Syu --noconfirm"
alias e="nvim"
alias b="btop"
alias nv="nvtop"
alias pacman="sudo pacman"
alias cat="bat"
alias ssh="kitten ssh"
alias install-ohmyzsh="sh -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'"

if [[ $TERM == "xterm-kitty" ]]; then
    neofetch
fi
