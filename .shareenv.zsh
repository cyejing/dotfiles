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
. "$HOME/.cargo/env"

export HOMEBREW_API_DOMAIN="https://mirrors.aliyun.com/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"


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
