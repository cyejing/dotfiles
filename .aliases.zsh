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
alias proxy='export all_proxy=socks5h://127.0.0.1:1080 && export HTTPS_PROXY=http://127.0.0.1:1080'
alias unproxy='unset all_proxy && unset HTTPS_PROXY'

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


alias ktd="kitten themes Github Dark"
alias ktl="kitten themes GitHub Light"

