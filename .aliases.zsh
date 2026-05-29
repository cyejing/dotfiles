# Basic
# alias ls="gls --color -h --group-directories-first -F"
alias v='vim'
alias nv='nvim'
alias lv='lvim'
alias lvr='lvim ~/buffers/buffer'
alias tv='lvim -c terminal'
alias ll='ls -lh'
alias la='ls -a'
alias k='kubectl'

# Proxy
alias proxy='export ALL_PROXY=socks5h://127.0.0.1:1080 && export HTTP_PROXY=http://127.0.0.1:1080 && export HTTPS_PROXY=http://127.0.0.1:1080'
alias proxyman='export ALL_PROXY=socks5h://127.0.0.1:9091 && export HTTP_PROXY=http://127.0.0.1:9090 && export HTTPS_PROXY=http://127.0.0.1:9090'
alias unproxy='unset ALL_PROXY && unset HTTP_PROXY && unset HTTPS_PROXY'

# Git
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# More
alias reloadshell="source $HOME/.zshrc && source ~/.zshenv"

# alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="curl ifconfig.me"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"


# Theme switcher: theme [light|dark]  (no arg = toggle)
function theme() {
    local KITTY_DIR="$HOME/.config/kitty"
    local CLAUDE_SETTINGS="$HOME/.claude/settings.json"

    # Detect current theme from conf header
    local current="light"
    grep -q "## name: GitHub Dark" "$KITTY_DIR/current-theme.conf" 2>/dev/null && current="dark"

    # Resolve target
    local target="${1:-}"
    case "$target" in
        light|dark) ;;
        "")
            [[ "$current" == "light" ]] && target="dark" || target="light"
            ;;
        *)
            echo "Usage: theme [light|dark]  (no arg = toggle)"
            echo "Current: GitHub $current"
            return 1
            ;;
    esac

    local theme_file="$KITTY_DIR/github-${target}.conf"
    if [[ ! -f "$theme_file" ]]; then
        echo "Error: $theme_file not found"
        return 1
    fi

    # Apply kitty theme and reload all kitty windows
    cp "$theme_file" "$KITTY_DIR/current-theme.conf"
    # macOS kitty runs as full path, pgrep by name doesn't work
    kill -USR1 $(pgrep -f "kitty.app/Contents/MacOS/kitty") 2>/dev/null || true
    # Also update colors immediately for all open windows via remote control
    kitty @ set-colors --all --configured "$theme_file" 2>/dev/null || true

    # Update Claude Code theme
    if [[ -f "$CLAUDE_SETTINGS" ]]; then
        local tmp
        tmp=$(mktemp)
        jq ".theme = \"$target\"" "$CLAUDE_SETTINGS" > "$tmp" && mv "$tmp" "$CLAUDE_SETTINGS"
    fi

    echo "Switched to GitHub ${(C)target} theme"
}
alias ktl="theme light"
alias ktd="theme dark"
alias ktt="theme"

