#!/usr/bin/env bash

if [[ ${0%/*} != . ]]; then
  echo Please run "${0#./}" from his directory instead.
  exit 1
fi

echo ========MAKE SYMLINKS========

[[ -d $HOME/.config ]] || mkdir "$HOME/.config"
for config in $(ls -A); do
  case $config in
    ("setup.sh" | ".git" | "README.md")
      echo JUNK → $config ignored.
      ;;
    (.*)
      if [[ $config -ef $HOME/$config ]]; then
        echo DOT  → $config already in $HOME
      else
        ln -s -b $(pwd)/$config $HOME
        echo DOT  → $config now in $HOME
      fi
      ;;
    (*)
      if [[ $config -ef $HOME/.config/$config ]]; then
        echo CONF → $config already in $HOME/.config
      else
        ln -s -b $(pwd)/$config $HOME/.config/
        echo CONF → $config now in $HOME/.config
      fi
      ;;
  esac
done
