# If not running interactively, don't do anything
[[ $- != *i* ]] && return
unset PROMPT_COMMAND

# Load all the good stuff into the bash
for file in $HOME/.config/bashrc.d/*; do
  source $file
done
