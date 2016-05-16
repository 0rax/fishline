#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_FULLPWD

    __FLINT_SEGMENT $FLCLR_FULLPWD_BG $FLCLR_FULLPWD_FG
    printf $PWD | sed "s|^$HOME|~|" | tr -d '\n'

end
