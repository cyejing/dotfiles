#!/bin/bash


function doIt() {
	rsync --include ".zshrc" \
        --include ".aliases.zsh" \
        --include ".gitconfig" \
        --include ".gitignore" \
        --include ".ideavimrc" \
        --include ".m2" \
        --include ".m2/settings.xml" \
        --include ".npmrc" \
        --include ".p10k.zsh" \
        --include ".vimrc" \
        --exclude "*" \
		-avh --no-perms ~/ .;
}

doIt;
unset doIt;
