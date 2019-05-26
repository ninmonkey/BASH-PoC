# Goal:
#
#     windows man pages don't exist, so to fake it:
#     type `man command` which will run `command --help | less`
#
# Args:
#     <command>   : same as linux man
#     --web       : will open man page on the internet for better quality
#
#
# 1. print echo; echo arg

display_manual() {
    "$1" --help | less;
}
display_manual_web() {
    echo 'nyi'
}



alias man="display_manual"
alias manw="display_manual_web"
echo 'done';