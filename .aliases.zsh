# Basic
# alias ls="gls --color -h --group-directories-first -F"
alias ll='ls -l'
alias la='ls -a'
alias cl='clear'
alias k='kubectl'

# Proxy
alias proxy='export all_proxy=socks5h://127.0.0.1:1080 && export HTTPS_PROXY=http://127.0.0.1:1080'
alias unproxy='unset all_proxy'

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
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
alias reloadshell="source $HOME/.zshrc"

# jdk
if [ "$(uname -s)" = "Darwin" ] ; then
    alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
    alias j17="export JAVA_HOME=`/usr/libexec/java_home -v 17`"
elif [ "$(uname -s)" = "Linux" ] ; then
    alias j8="sudo update-java-alternatives --set /usr/lib/jvm/java-1.8.0-openjdk-amd64"
    alias j17="sudo update-java-alternatives --set /usr/lib/jvm/java-1.17.0-openjdk-amd64"
fi

# alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="curl ifconfig.me"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"


