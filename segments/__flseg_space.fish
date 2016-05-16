#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_space

    __fishline_segment_close
    set -e FLINT_BCOLOR
    tput el
    printf " "

end
