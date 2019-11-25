# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# cd to previous working directory
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"

# Define some user aliases…
alias ls='ls --color=auto --group-directories-first'
alias tree='tree -C --dirsfirst'
alias journal='$HOME/.config/dotfiles/.journal'
alias exercism='$HOME/exercism/bin/exercism'
alias dot='cd $HOME/.config/dotfiles'

# set escape sequences more appropriately
black=$(   tput setaf 0)
red=$(     tput setaf 1)
green=$(   tput setaf 2)
yellow=$(  tput setaf 3)
blue=$(    tput setaf 4)
magenta=$( tput setaf 5)
cyan=$(    tput setaf 6)
white=$(   tput setaf 7)
bold=$(    tput bold)
reset=$(   tput sgr0)

PS1='\[$reset\][\[$cyan\]\u@\h \[$green\]\W\[$white\]]\[$yellow\]$\[$red\] '

# Commands to be executed before and after the prompt is displayed
PROMPT_COMMAND='pwd > "${HOME}/.cwd"'
trap 'echo -n $reset' DEBUG

# Ruby Gem's path configuration
for _entry in $HOME/.gem/*; do
  if [[ -d $_entry ]]; then
    export GEM_PATH=$_entry:$GEM_PATH
  fi
done
unset _entry

# Get a good, clean, history
export HISTSIZE=10000
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
