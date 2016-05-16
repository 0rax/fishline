#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_STATUS

    if [ $FLINT_STATUS -gt 0 ]
        __fishline_segment $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf $FLINT_STATUS
    end

end
