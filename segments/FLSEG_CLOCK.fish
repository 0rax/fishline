#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_CLOCK

    __fishline_segment $FLCLR_CLOCK_BG $FLCLR_CLOCK_FG
    printf "%s" (date "+%H:%M")

end
