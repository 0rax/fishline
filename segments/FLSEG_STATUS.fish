#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_STATUS

    if [ $FLINT_STATUS -gt 0 ]
        __FLINT_SEGMENT $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf $FLINT_STATUS
    end

end
