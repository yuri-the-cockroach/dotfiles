if status is-interactive
    export PATH="~/.local/bin:$PATH"
    export PATH="~/.local/bash:$PATH"
    export XDG_DATA_HOME=~/.local/share
    export XDG_CONFIG_HOME=~/.config
    export EDITOR=nvim
    set fish_greeting
    set __fish_git_prompt_showcolorhints true
    set __fish_git_prompt_show_informative_status true
    set __fish_git_prompt_char_dirtystate +
    set __fish_git_prompt_char_invalidstate x

    bind \b backward-kill-word
    bind \e\[3\;5~ kill-word

    alias hyprexit="hyprctl dispatch exit"
    alias sudo="sudo "
    alias v=nvim
    alias l="ls -lha"
    alias b=btop
    alias e="emacsclient -nw -r"
    alias cat=bat
    alias pacman="sudo pacman"
    alias pwt=pw-top
    alias du="du -h --max-depth=1"
    alias feh="/usr/bin/feh --scale-down"
    alias grep='rg'
    alias git-push-tag='git push origin $(git describe --tags --abbrev=0)'



    if test (ssh-add -l) = "The agent has no identities."
        ssh-add ~/.ssh/id_rsa
    end

    fastfetch
end
