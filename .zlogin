export TIME_STYLE='long-iso'
bindkey -v
zstyle ':completion:*' menu false
zstyle ':completion:*:default' list-colors ''

for i in $(alias | cut -d'=' -f1 | sed -e "s/'//g; /^-$/d"); do unalias $i; done