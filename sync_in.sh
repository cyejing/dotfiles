#!/bin/bash

function doIt() {
	rsync --include ".zshrc" \
        --include ".aliases.zsh" \
        --include ".gitconfig" \
        --include ".gitignore" \
        --include ".ideavimrc" \
        --include ".vscode.vimrc" \
        --include ".m2" \
        --include ".m2/settings.xml" \
        --include ".config" \
        --include ".config/go" \
        --include ".config/kitty" \
        --include ".config/kitty/kitty.conf" \
        --include ".config/kitty/current-theme.conf" \
        --include ".config/kitty" \
        --include ".config/go/env" \
        --include ".npmrc" \
        --include ".p10k.zsh" \
        --include ".vimrc" \
        --exclude "*" \
		-avh --no-perms ~/ .;
}


doIt;
unset doIt;
