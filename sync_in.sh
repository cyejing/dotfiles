#!/bin/bash

function doIt() {
	rsync --include ".zshrc" \
        --include ".aliases.zsh" \
        --include ".shareenv.zsh" \
        --include ".gitconfig" \
        --include ".gitignore" \
        --include ".ideavimrc" \
        --include ".vscode.vimrc" \
        --include ".cargo" \
        --include ".cargo/config" \
        --include ".config" \
        --include ".config/go" \
        --include ".config/kitty" \
        --include ".config/kitty/kitty.conf" \
        --include ".config/kitty/current-theme.conf" \
        --include ".config/kitty" \
        --include ".config/go/env" \
        --include ".config/config.py" \
        --include ".npmrc" \
        --include ".p10k.zsh" \
        --include ".vimrc" \
        --exclude "*" \
		-avh --no-perms ~/ .;
}


doIt;
unset doIt;
