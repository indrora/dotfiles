# 10-completion.zsh
# Completion options.
# The following lines were added by compinstall

zstyle ':completion:*' completer _list _complete _expand  
zstyle ':completion:*' matcher-list '' 'r:|[._-/]=** r:|=**' '+m:{[:lower:]}={[:upper:]}' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2 not-numeric
zstyle ':completion:*' prompt '[caught %e errors]'
zstyle :compinstall filename '/home/indrora/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
