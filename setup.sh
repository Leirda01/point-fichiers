#!/usr/bin/env bash

if [[ ${0%/*} != . ]]; then
    echo Please run "${0#./}" from it directory instead.
    exit 1
fi

echo ========MAKE SYMLINKS========

[[ -d $HOME/.config ]] || mkdir "$HOME/.config"
for config in $(ls -A); do
    case $config in
        ("setup.sh" | ".git" | ".gitignore" | "README.adoc" | "run" )
            printf "JUNK → %s ignored\n" "$config"
            ;;
        (.*)
            if [[ $config -ef $HOME/$config ]]; then
                printf "DOT  → %s already in %s\n" "$config" "$HOME"
            else
                ln -s -b $(pwd)/$config $HOME
                printf "DOT  → %s now in %s!\n" "$config" "$HOME"
            fi
            ;;
        (*)
            if [[ $config -ef $HOME/.config/$config ]]; then
                printf "CONF → %s already in %s/.config\n" "$config" "$HOME"
            else
                ln -s -b $(pwd)/$config $HOME/.config/
                printf "CONF → %s now in %s/.config!\n" "$config" "$HOME"
            fi
            ;;
    esac
done

echo =====MAKE COMMANDS IN RUN=====
(
cd run
echo generate man keymap && lesskey less_keymap
)
