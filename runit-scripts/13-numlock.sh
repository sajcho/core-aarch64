#
# Load keyboard leds - keyboard active
#
msg "Enable numlock keyboard ..."

INITTY=/dev/tty[1-6]
        for tty in $INITTY; do
                setleds -D +num < $tty
        done

# End of file
