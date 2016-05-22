function check_display_connected
    set -l xrandr_output (xrandr | grep "$argv[1]")
    if test (count $xrandr_output) -gt 1
        echo "There is probably more than 1 output containing the string '$argv[1]', aborting!"
        return
    end
    
    if test -z $xrandr_output
        echo "Output not found, aborting!"
        return
    end

    switch $xrandr_output
        case '*disconnected*'
            echo "0"
        case '*'
            echo "1"
    end
end
