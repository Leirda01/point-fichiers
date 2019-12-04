#!/usr/bin/bash

echo ========MAKE SYMLINKS========

for config in $(ls -A); do
  case $config in
    ("setup.sh" | ".git" | "README.md") 
      echo JUNK : $config ignored.
      ;;
    (.*)
      if [[ $config -ef $HOME/$config ]]; then
        echo FILE : $config already there.
      else
        ln -s -b $(pwd)/$config $HOME
        echo FILE : $config now in $HOME
      fi
      ;;
    (*)
      if [[ $config -ef $HOME/.config/$config ]]; then
        echo DIR  : $config already there.
      else
        ln -s -b $(pwd)/$config $HOME/.config/
        echo DIR  : $config now in $HOME
      fi
      ;;
  esac
done
