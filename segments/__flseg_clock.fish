#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_clock

    __fishline_segment $FLCLR_CLOCK_BG $FLCLR_CLOCK_FG
    printf "%s" (date "+%H:%M")

end
