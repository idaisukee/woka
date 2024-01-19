export TIME_STYLE='long-iso'
bindkey -v
PROMPT='
%{$fg[blue]👤%n $fg[green] $fg[cyan]📁%2~ $fg[green] 📺%m  🗒️ [$(git_prompt_info)] %}
%{$fg[yellow]%} > %{$reset_color%}'
zstyle ':completion:*' menu false
zstyle ':completion:*:default' list-colors ''

echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

for i in $(alias | cut -d'=' -f1 | sed -e "s/'//g; /^-$/d"); do unalias $i; done