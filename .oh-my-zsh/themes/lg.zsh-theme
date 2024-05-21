if [ -n "$SSH_TTY" ]; then ssh="%{$fg_bold[red]%} SSH"; fi
# if [ "$WINEPREFIX" ]; then color=yellow; else color=green; fi
HOSTNAME="$(echo $HOST)"
USER="$(whoami)"
PROMPT="%{$fg_bold[white]%}$USER@$HOSTNAME$ssh %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
