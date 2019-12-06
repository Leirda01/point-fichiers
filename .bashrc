# If not running interactively, don't do anything
[[ $- != *i* ]] && return
unset PROMPT_COMMAND

# Load all the good stuff into the bash
for file in $HOME/.config/bashrc.d/*; do
  source $file
done
unset _file

# cd to previous working directory
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }"pwd > $HOME/.cwd; "

# Ruby Gem's path configuration
for _entry in $HOME/.gem/*; do
  if [[ -d $_entry ]]; then
    export GEM_PATH=$_entry:$GEM_PATH
  fi
done
unset _entry
