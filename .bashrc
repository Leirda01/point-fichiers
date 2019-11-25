# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Define some user aliases…
alias ls='ls --color=auto --group-directories-first'
alias tree='tree -C --dirsfirst'
alias journal='$HOME/.config/dotfiles/.journal'
alias exercism='$HOME/exercism/bin/exercism'
alias dot='cd $HOME/.config/dotfiles'

PS1='[\u@\h \W]\$ '

# Ruby Gem's path configuration
for _entry in $HOME/.gem/*; do
  if [[ -d $_entry ]]; then
    export GEM_PATH=$_entry:$GEM_PATH
  fi
done
unset _entry

# Get a good, clean, history.
export HISTSIZE=10000
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
