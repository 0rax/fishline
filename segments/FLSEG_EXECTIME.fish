#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_EXECTIME

    set -l duration "$CMD_DURATION"

    if [ $duration -ge 100 ]

        __FLINT_SEGMENT $FLCLR_EXECTIME_BG $FLCLR_EXECTIME_FG

        set -l ms  (math "$duration%1000")
        if [ $duration -gt 60000 ]
          set -l min (math "$duration/60000")
          set -l s   (math "$duration/1000%60")
          printf "%sm %ss %sms" $min $s $ms
        else if [ $duration -gt 1000 ]
          set -l s   (math "$duration/1000%60")
          printf "%ss %sms" $s $ms
        else
          printf "%sms" $ms
        end

    end

end
