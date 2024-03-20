# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bash:$PATH
export PATH=$HOME/.local/bin:$PATH
export XDG_DATA_HOME=~/.local/share
export XDG_CONFIG_HOME=~/.config

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export ZSH_THEME="lg"


alias sudo='sudo '
alias update="flatpak update -y; yay -Syu --noconfirm"
alias e="emacsclient -nw -r"
alias b="btop"
alias v="nvim"
alias nvt="nvtop"
alias pacman="sudo pacman"
alias cat="bat"
# alias install-ohmyzsh="sh -c '\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'"
alias du="du -h --max-depth=1"
alias feh="/usr/bin/feh --scale-down"
alias diary="diary ~/notes/mood-diary/"

if [[ $TERM == "alacritty" ]]; then
    neofetch
fi

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ $(ssh-add -l) == "The agent has no identities." ]]; then
    ssh-add ~/.ssh/id_rsa
fi
