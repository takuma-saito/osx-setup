#!/bin/zsh

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
# export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_NDK="/opt/ndk"
# export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"
# export javaJP="java -Dfile.encoding=UTF-8"
# export LC_ALL=en

export ERLANG_HOME=/usr/local
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_OPTS=server
export HADOOP_PID_DIR=/var/run/hadoop

# Pig path
export PIG_HOME=/usr/local/pig
export PIG_HADOOP_VERSION=20
export PIG_CLASSPATH=$HADOOP_HOME/conf

export GDFONTPATH=/Library/Fonts
export GNUPLOT_DEFAULT_GDFONT='OsakaMono.ttf'
export GNUTERM=aqua

# export RUBYLIB=$HOME/lib/ruby

# # generated by macports 
# export PERL_LOCAL_LIB_ROOT="/Users/saitoutakuma/perl5";
# export PERL_MB_OPT="--install_base /Users/saitoutakuma/perl5";
# export PERL_MM_OPT="INSTALL_BASE=/Users/saitoutakuma/perl5";
# export PERL5LIB="$HOME/perl5/lib/perl5/darwin-thread-multi-2level:/Users/saitoutakuma/perl5/lib/perl5";

# エディタ関係
export EDITOR="/usr/local/bin/emacsclient"
export UNICODE_DIR="/usr/local/share/ucd"
export OZEMACS='/usr/local/bin/emacs'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
export LESS='-R'

# その他
export NDK_CCACHE=/opt/local/bin/ccache
export NUM_CPUS=4
export RSENSE_HOME="$HOME/.rsense-0.2"
export GOPATH="$HOME/code/go"

# パス関係
# export DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib:/usr/local/lib:/usr/lib
export BOOST_ROOT=/opt/local/include/boost:$BOOST_ROOT

export HOMEBREW_CASK_OPTS="--appdir=/Applications"


# proxy
# export T="http://localhost:8080/"
# export http_proxy=$T
# export all_proxy=$T
# export https_proxy=$T
# export HTTP_PROXY=$T
# export HTTPS_PROXY=$T

# python
export PYTHONDONTWRITEBYTECODE=1

export HOMEBREW_GITHUB_API_TOKEN="6de311b54c5e9a47c2339bf4e5df2cd7aa0bfc62"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

[ "$(docker-machine ls -q)" = "default" ] && eval $(docker-machine env default)

# denv
which denv >/dev/null 2>&1
if [ $? -ne 1 ]; then
    eval "$(denv init -)"
fi

# emacs
if ! pgrep -f '[Ee]macs' >/dev/null 2>&1; then
    emacs --daemon >/dev/null 2>&1
fi

# python
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# direnv
eval "$(direnv hook zsh)"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
