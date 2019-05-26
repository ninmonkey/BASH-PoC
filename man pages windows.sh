#!/usr/bin/env bash

echo 'start parse'

# Goal:
#
#     windows man pages don't exist, so to fake it:
#     type `man command` which will run `command --help | less`
#
# Args:
#     <command>   : same as linux man
#     --web       : will open man page on the internet for better quality
#

# now easier: test with the following in the file.
    # fn={..} , then:
    # alias man="display_manual"
    # man awk

    # to execute test, run:
    # $ source ~/.bashrc


#   $ man cat
    # prints cat --help | less

    # $ source ./man\ pages\ windows.sh cat
    # just says "done"

    # $ source ./man\ pages\ windows.sh cat ; man cat
    # works then prints "done"

# fails:
#   $ source ./man\ pages\ windows.sh cat
#   done


main() {
    echo 'refactor to only use main, nothing naked'
    echo 'refactor to only use main, nothing naked'
    echo 'refactor to only use main, nothing naked'
}

display_manual() {
    echo $1;
    echo $2;
    echo $3;
    # echo 'hi'
    # echo "1 = $1";
    # echo '2 = $2';
    # "$1" --help | less;
    # "$1 --help"

    echo 'f'
    echo 'f'
    echo 'f'
}
display_manual_web() {
    echo 'nyi'
    use $BROWSER
}

main() {
    # $1 = 'less'
    # display_manual $1
    # display_manual_web
    echo $1
    echo $2
    echo "first $1 "
    alias man="display_manual"
    # alias manw="display_manual_web"
    echo 'done';

    # display_manual 'zip'

}


error_warn() {
    echo "Warning!: ${1}"
}
error_fatal() {
    echo "Fatal Error!: ${1}"
    exit 1
}

launch_browser() {
    local url="$1"
    local request="\"${BROWSER}\" \"${url}\""


    echo req = "$request"

    if [[ "$url" ]]; then
        "$request"
    else
        error_warn "\$url is not set"
        # error_warn "env \$BROWSER is not set!"
    fi
}
display_manpage() {
    # declare command="$1"

    # todo: if for web or not.
    # declare man_command = $1
    # declare use_web = $2

    # echo '....'
    # echo $1;
    # echo '....'
    # echo $2;
    # echo '....'
    # echo $3;
    # echo '....'
    # echo 1 = $1
    # echo 2 = $2
    local cmd_name=$1
    local use_web=$2


    # firefox_path = 'C:\Program Files\Mozilla Firefox\firefox.exe'
    local search_url='https://www.google.com?q='
    local search_query="linux+man+${cmd_name}"
    # query = 'linux+man+awk'

    # or: firefox specific:     /usr/bin/firefox --search "term"
    # or: default associated browser

    # full_command = "$firefox_path $search_url$query"
    # or ? full_command = "${firefox_path} ${search_url}${query}"

    if [[ "$BROWSER" ]]; then
        # echo "www ${BROWSER}"
        # "${BROWSER}" + "${url}"
        # echo $url
        echo '.'
        # local url "${search_url}${search_query}"
    else
        error_warn "Missing env \$BROWSER"
    fi


    if [[ "$use_web" ]]; then
        # echo "www ${BROWSER}"
        echo '_'

        local url="${search_url}${search_query}"
        launch_browser "$url"

        # echo "url = ${url}"
    else
        $cmd_name --help | less
    fi

    # return
    # local use_web = "$2"


    # if [[ '--wb' = $2 ]]; then
    #     echo 'yes --web'
    # else
    #     echo 'failed --web'
    # fi

    # if [[ 'web' = $2 ]]; then
    #     echo 'yes web'
    # else
    #     echo 'failed web'
    # fi

    # if [[  ]]; then
    #     echo 'web noiw!'
    # else
    #     "$1" --help | less;
    # fi

}

display_manpage_web() {
    echo 'disp web'
}

# launch_firefox = 'C:\Program Files\Mozilla Firefox\firefox.exe" "https://www.google.com/search?q=linux+man+awk"'

# $1 = 'less'
# display_manpage $1
# display_manpage_web
# echo $1
# echo $2
# echo "first $1 "


# alias manw="display_manpage_web"

# test with the following in the file.
alias man="display_manpage"

# man awk
# echo 1 = $use_web

# man awk sdf
# echo 2 = $use_web

man awk --web
# echo 3 = $use_web

echo 'done parsing'


# main
