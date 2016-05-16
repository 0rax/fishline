#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_ROOT

    if [ "$USER" = "root" ]
        __FLINT_SEGMENT $FLCLR_ROOT_BG_ROOT $FLCLR_ROOT_FG_ROOT
        printf $FLSYM_ROOT_ROOT
    else
        __FLINT_SEGMENT $FLCLR_ROOT_BG_USER $FLCLR_ROOT_FG_USER
        printf $FLSYM_ROOT_USER
    end

end
