#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_SPACE

    __fishline_segment_close
    set -e FLINT_BCOLOR
    tput el
    printf " "

end
