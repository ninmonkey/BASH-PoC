# About

More of a 'because I can'  style application.

tags: grep, colors, search, regex, pipe

# ref

- https://superuser.com/questions/676228/use-different-colors-for-every-another-grep
- https://unix.stackexchange.com/questions/26313/colored-find-output

# and

essentially a bash function that
    1. iterates a list of strings "cat, dog, bar"
    2. pipe calls `grep -P <string> --color=always`
    3. finally output to STDOUT / `less`

advanced:
    1. same thing, but iterate over 'pat1', 'pat2', etc..)