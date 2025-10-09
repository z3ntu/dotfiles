function stfu --description "Launch a process in the background, silencing all output"
    fish -c (string join -- ' ' (string escape -- $argv)) 2>/dev/null >/dev/null &
    disown
end
