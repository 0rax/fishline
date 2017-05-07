#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_space

    __fishline_segment_close
    type -q tput; and tput el
    printf " "

end
