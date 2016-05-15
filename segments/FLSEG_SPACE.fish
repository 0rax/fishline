#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_SPACE

    FLINT_CLOSE normal normal True
    set -e FLINT_BCOLOR
    tput el
    printf " "

end
