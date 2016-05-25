#!/bin/zsh

# [ -z "$dyld_library_path" ] && typeset -xT DYLD_LIBRARY_PATH dyld_library_path
# [ -z "$ld_library_path" ] && typeset -xT LD_LIBRARY_PATH ld_library_path
# [ -z "$library_path" ] && typeset -xT LIBRARY_PATH library_path
# [ -z "$c_include_path" ] && typeset -xT C_INCLUDE_PATH c_include_path
# [ -z "$cplus_include_path" ] && typeset -xT CPLUS_INCLUDE_PATH cplus_include_path
typeset -Ug path cdpath fpath manpath \
    ld_library_path library_path c_include_path cplus_include_path dyld_library_path

path=(
    # 標準パス
    /bin
    /sbin
    $HOME/bin
    $HOME/usr/bin
    /usr/local/bin
    /usr/local/sbin
    /usr/local/libexec
    /usr/bin
    /usr/sbin
    /usr/libexec
    # $JAVA_HOME/bin
    # $HADOOP_HOME/bin
    # $PIG_HOME/bin
    # $GOPATH/bin
)

manpath=(
    /usr/local/gnu/man
    $HOME/usr/share
)

# dyld_library_path=(
#     $HOME/usr/lib
# )

# ld_library_path=(
#     /lib
#     /usr/lib
#     /usr/local/lib
#     $HOME/usr/lib
# )

# library_path=(
#     /usr/lib
#     $HOME/lib
#     $HOME/usr/lib
# )

# c_include_path=(
#     $HOME/include
# )

# cplus_include_path=(
#     $HOME/include
# )
