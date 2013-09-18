# The following lines were added by compinstall

zstyle ':completion:*' completer _list _expand _complete _ignored
zstyle ':completion:*' matcher-list '' 'r:|[._-/]=** r:|=**' '+m:{[:lower:]}={[:upper:]}' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2 not-numeric
zstyle ':completion:*' prompt '[caught %e errors]'
zstyle :compinstall filename '/home/indrora/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt appendhistory notify
bindkey -e
# End of lines configured by zsh-newuser-install
autoload -U promptinit && promptinit

prompt adam2
