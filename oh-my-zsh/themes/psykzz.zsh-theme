PROMPT=$'%{$fg[red]%}┌[%{$reset_color%}%n%{$reset_color%}%{$fg[red]%}@%{$reset_color%}%M%{$reset_color%}%{$fg[red]%}]  %{$(git_prompt_info)%}%(?,,%{$fg[red]%}[%{$reset_color%}%?%{$reset_color%}%{$fg[red]%}])
%{$fg[red]%}└[%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[red]%}]>%{$reset_color%} '

RPROMPT=$'%{$fg[red]%}[%{$reset_color%}%T%{$reset_color%}%{$fg[red]%}]%{$reset_color%}'
PS2=$' %{$fg[red]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}垢%{$reset_color%}"
