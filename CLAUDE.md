# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository for macOS. It uses `rsync` to sync config files between the home directory and this repo.

## Key Scripts

| Script | Purpose |
|--------|---------|
| `dep.sh` | Install dependencies: oh-my-zsh, powerlevel10k, zsh plugins (autosuggestions, syntax-highlighting), vim-plug |
| `sync_in.sh` | Pull configs **from `~/`** into this repo (update repo from live system) |
| `sync_out.sh` | Push configs **from this repo to `~/`** (apply repo to live system); requires `-f` flag to skip confirmation |

## Tracked Files

`sync_in.sh` explicitly whitelists files to sync. When adding a new dotfile to track, add it to **both** the `--include` list in `sync_in.sh` and ensure `sync_out.sh`'s `--exclude` list doesn't block it.

Current tracked files: `.zshrc`, `.aliases.zsh`, `.shareenv.zsh`, `.gitconfig`, `.gitignore`, `.ideavimrc`, `.vscode.vimrc`, `.vimrc`, `.p10k.zsh`, `.npmrc`, `.cargo/config.toml`, `.config/go/env`, `.config/kitty/`, `.config/config.py`.

## Shell Configuration Structure

- `.zshrc` — oh-my-zsh entry point, theme (powerlevel10k), plugins
- `.aliases.zsh` — all aliases and the `theme()` function
- `.shareenv.zsh` — `$PATH` exports, tool homes (Maven, Go, NVM, pnpm), Java version aliases, Homebrew mirrors (USTC)

### Useful Aliases

- **Theme**: `ktt` (toggle), `ktl` (light), `ktd` (dark) — switches Kitty terminal + Claude Code theme simultaneously
- **Java**: `j8` / `j17` / `j21` — switch active JDK via `$JAVA_HOME`
- **Proxy**: `proxy` (socks5 1080), `proxyman` (9090/9091), `unproxy`
- **Git shortcuts**: `commit "msg"`, `amend`, `wip`, `force`, `nuke`, `stash`/`pop`
