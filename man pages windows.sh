#!/bin/bash

# Goal:
#
#     windows man pages don't exist, so to fake it:
#     type `man command` which will run `command --help | less`
#
# Args:
#     <command>   : same as linux man
#     --web       : will open man page on the internet for better quality
#
# example on shell:
#   $ display_manual awk # or
#   $ man awk


# confusion on uses, because

# works:
#   $ man cat
    # prints cat --help | less

    # $ source ./man\ pages\ windows.sh cat
    # just says "done"

    # $ source ./man\ pages\ windows.sh cat ; man cat
    # works then prints "done"

# fails:
#   $ source ./man\ pages\ windows.sh cat
#   done




display_manual() {
    echo 'hi'
    echo "1 = $1";
    echo '2 = $2';
    # "$1" --help | less;
    "$1 --help"

    echo 'bye'
}
display_manual_web() {
    echo 'nyi'
}


# $1 = 'less'
# display_manual $1
# display_manual_web

alias man="display_manual"
alias manw="display_manual_web"
echo 'done';

# display_manual 'zip'
