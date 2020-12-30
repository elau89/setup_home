#!/bin/bash

# Generage a backup and move all the configs to the home directory
function moveToHome() {
    if [[ $DRY && $DRY -ne 0 ]]; then
        echo cp -bfr $1 $HOME/.$1
    else
        cp -bfr $1 $HOME/.$1
    fi
}

for file in *; do
    moveToHome "$file"
done

# Remove itself
if [[ -f $HOME/.setup.sh ]]; then
    rm $HOME/.setup.sh
fi
