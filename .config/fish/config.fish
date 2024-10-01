if status is-interactive
    set XDG_DATA_HOME "/home/cockroach/.local/share"
    set XDG_CONFIG_HOME "/home/cockroach/.config"
    set -x EDITOR nvim
    set fish_greeting
    set __fish_git_prompt_showcolorhints true
    set __fish_git_prompt_show_informative_status true
    set __fish_git_prompt_char_dirtystate +
    set __fish_git_prompt_char_invalidstate x
    fish_add_path /home/cockroach/.local/bin/
    fish_add_path /home/cockroach/.local/bash/

    bind \b backward-kill-word
    bind \e\[3\;5~ kill-word

    alias hyprexit="hyprctl dispatch exit"
    # alias sudo="sudo "
    alias l="ls -lha"
    alias b=btop
    alias e="emacsclient -nw -r"
    alias cat="bat -p"
    alias pacman="sudo pacman"
    alias yeet="pacman -Rns"
    alias pwt=pw-top
    alias du="du -h --max-depth=1"
    alias feh="/usr/bin/feh --scale-down"
    alias grep='rg'
    alias git-push-tag='git push origin $(git describe --tags --abbrev=0)'
    alias update-mirrors='sudo reflector --age 6 --country Germany,Israel --score 25 -f 5 --save /etc/pacman.d/mirrorlist'




    if test (ssh-add -l) = "The agent has no identities."
        ssh-add ~/.ssh/id_rsa
    end

    fastfetch
end
