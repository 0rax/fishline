#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_userhost

    __fishline_segment $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
    printf '%s@%s' $USER (hostname)

end
