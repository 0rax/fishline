#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_arrow

    __fishline_segment $FLCLR_ARROW_BG $FLCLR_ARROW_FG
    printf $FLSYM_ARROW

end
