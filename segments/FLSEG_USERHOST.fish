#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_USERHOST

    __FLINT_CLOSE $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
    printf '%s@%s' $USER (hostname)

end
