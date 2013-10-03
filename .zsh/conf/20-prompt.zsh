#
# Prompt initialization
#
fpath+=( $HOME/.zsh/functions )

autoload -U promptinit ; promptinit
zmodload zsh/parameter

zstyle ':prompt:powerline:ps1' hide-user 1

source $HOME/.zsh/hooks/prompt-disambiguate.zsh
source $HOME/.zsh/hooks/vcs_info-lofi.zsh

prompt powerline

