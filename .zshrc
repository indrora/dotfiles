# ZSH configuration
# Fun stuff yo

################################################################################
##                      Taken from somewhere on GitHub                        ##
################################################################################
#usage: title short_tab_title looooooooooooooooooooooggggggg_windows_title
#http://www.faqs.org/docs/Linux-mini/Xterm-Title.html#ss3.1
#Fully support screen, iterm, and probably most modern xterm and rxvt
#Limited support for Apple Terminal (Terminal can't set window or tab separately)
function title {
  [ "$DISABLE_AUTO_TITLE" != "true" ] || return
  if [[ "$TERM" == screen* ]]; then
    print -Pn "\ek$1:q\e\\" #set screen hardstatus, usually truncated at 20 chars
  elif [[ "$TERM" == xterm* ]] || [[ $TERM == rxvt* ]] || [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    print -Pn "\e]2;$2:q\a" #set window name
    print -Pn "\e]1;$1:q\a" #set icon (=tab) name (will override window name on broken terminal)
  fi
}

TITLEFMT="[%40<..<%~%<<]" #15 char left truncated PWD
#Appears when you have the prompt
function zz_precmd {
  title $TITLEFMT $TITLEFMT
}

#Appears at the beginning of (and during) of command execution
function zz_preexec {
  #emulate -L zsh
  setopt extended_glob
  local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]} #cmd name only, or if this is sudo or ssh, the next cmd
  title "$CMD" "%100>...>$2%<<"
}

function zz_title {
echo "x"
}

autoload -U add-zsh-hook
add-zsh-hook precmd  zz_precmd
add-zsh-hook preexec zz_preexec


foreach conf in $HOME/.zsh/conf/*.zsh; do
  source $conf
done

