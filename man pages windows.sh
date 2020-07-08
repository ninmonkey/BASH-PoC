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

display_manual() {
    echo man 1= $1;
    echo man 2= $2;
    echo man 3= $3;
        # echo "1 = $1";
    # echo '2 = $2';
    # "$1" --help | less;
    # "$1 --help"

    echo 'f'
    echo 'f'
    echo 'f'
}

error_warn() {
    echo "Warning!: ${1}"
}
error_fatal() {
    echo "Fatal Error!: ${1}"
    exit 1
}

launch_browser() {
    echo "using: ${BROWSER}"
    echo "url 1 == ${1}"

    local url="$1"
    local request="\"${BROWSER}\" \"${url}\""

    echo 'test 1 v 2'
    echo "r1 = ${request}"
    request="\"${BROWSER}\" \"${url}\""
    echo "r2 = ${request}"

    if [[ "$url" ]]; then
        $request
    else
        error_warn "\$url is not set"
    fi
}
display_manpage() {
    local cmd_name=$1
    local use_web=$2

    local search_url='https://www.google.com?q='
    local search_query="linux+man+${cmd_name}"

    # or: firefox specific:     /usr/bin/firefox --search "term"
    # or: default associated browser

    # full_command = "$firefox_path $search_url$query"
    # or ? full_command = "${firefox_path} ${search_url}${query}"

    local url="blank"
    url="${search_url}${search_query}"
    # local url "${search_url}${search_query}"
    # url "${search_url}${search_query}"
    # echo "url === ${url}"

    if [[ "$BROWSER" ]]; then
        echo ". -> yes browser ${BROWSER}"
    else
        error_warn "Missing env \$BROWSER"
    fi


    if [[ "$use_web" ]]; then
        # echo "www ${BROWSER}"
        echo "_ -> yes use web ${use_web}"

        launch_browser "$url"

        # echo "url = ${url}"
    else
        $cmd_name --help | less
    fi
}

main() {
    alias man="display_manpage"
    echo 'main() done';

    echo; echo; echo; echo;
    echo ' need escaep space url ***IISS*** the missing file ?????'
    echo ' need escaep space url ***IISS*** the missing file ?????'
    echo ' need escaep space url ***IISS*** the missing file ?????'
    echo 'quite confused because if I paste to the term, it runes right'
    echo 'is paste changing quotes then?'
    echo 'what ***IISS*** the missing file ?????'
    echo ' need escaep space url ***IISS*** the missing file ?????'
    echo ' need escaep space url ***IISS*** the missing file ?????'

    echo; echo; echo; echo;
    echo 'so some kind of quote issue'
    echo "C:\Program Files\Mozilla Firefox\firefox.exe" "https://www.google.com?q=linux+man+awk"
}
main
