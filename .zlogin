export TIME_STYLE='long-iso'
bindkey -v
PROMPT='
%{$fg[blue]👤%n $fg[green] $fg[cyan]📁%2~ $fg[green] 📺%m  🗒️ [$(git_prompt_info)] %}
%{$fg[yellow]%} > %{$reset_color%}'
zstyle ':completion:*' menu false
zstyle ':completion:*:default' list-colors ''

unalias rd
unalias grm
