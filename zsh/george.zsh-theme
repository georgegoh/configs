# Yay! High voltage and arrows!
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && return
    echo "%{$fg[white]%}➜"
    #echo "%{$fg[white]%}▶"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}ℊ"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}ℊ"

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%} %{$fg[cyan]%}${PWD/#$HOME/~}%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)$(prompt_char)%{$reset_color%} '

#local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
local return_status="%{$fg[red]%}%(?..⤬)"
RPROMPT='${return_status}%{$reset_color%}'
