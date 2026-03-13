export PATH=${HOME}/.local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/.npm-global/bin:$PATH
# java
export MAVEN_HOME=${HOME}/rp/maven
export PATH=${MAVEN_HOME}/bin:$PATH
export PATH=${HOME}/.jdtls/jdtls-1.9.0/bin:$PATH
export PATH=${HOME}/go/bin:$PATH


export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"
export JDTLS_HOME=${HOME}/.local/share/nvim/lsp_servers/jdtls
export HELM_EXPERIMENTAL_OCI=1
[[ ! -f ~/.cargo/env ]] || source ~/.cargo/env

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
# Set non-default Git remotes for Homebrew/brew and Homebrew/homebrew-core.
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git"

# jdk
if [ "$(uname -s)" = "Darwin" ] ; then
    alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
    alias j17="export JAVA_HOME=`/usr/libexec/java_home -v 17`"
    alias j21="export JAVA_HOME=`/usr/libexec/java_home -v 21`"
elif [ "$(uname -s)" = "Linux" ] ; then
    alias j8="sudo update-java-alternatives --set /usr/lib/jvm/java-1.8.0-openjdk-amd64"
    alias j17="sudo update-java-alternatives --set /usr/lib/jvm/java-1.17.0-openjdk-amd64"
    alias j21="sudo update-java-alternatives --set /usr/lib/jvm/java-1.21.0-openjdk-amd64"
fi
