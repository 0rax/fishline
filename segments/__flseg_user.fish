#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_user

    __fishline_segment $FLCLR_USER_BG $FLCLR_USER_FG
    printf $USER

end
