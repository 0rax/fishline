#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_exectime

    set -l duration "$CMD_DURATION"

    if [ $duration -ge 100 ]

        __fishline_segment $FLCLR_EXECTIME_BG $FLCLR_EXECTIME_FG

        set -l ms (math "$duration%1000")
        if [ $duration -gt 36000000 ]
            set -l h   (math --scale=0 "$duration/36000000")
            set -l min (math --scale=0 "$duration/60000%60")
            printf "%sh %sm" $h $min
        else if [ $duration -gt 60000 ]
            set -l min (math --scale=0 "$duration/60000")
            set -l s   (math --scale=0 "$duration/1000%60")
            printf "%sm %ss" $min $s
        else if [ $duration -gt 1000 ]
            set -l s   (math --scale=0 "$duration/1000")
            printf "%ss %sms" $s $ms
        else
            printf "%sms" $ms
        end

    end

end
