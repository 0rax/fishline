#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_USERHOST

    __FLINT_SEGMENT $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
    printf '%s@%s' $USER (hostname)

end
