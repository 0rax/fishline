#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_user

    __fishline_segment $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
    printf $USER

end
