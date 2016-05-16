#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_root

    if [ "$USER" = "root" ]
        __fishline_segment $FLCLR_ROOT_BG_ROOT $FLCLR_ROOT_FG_ROOT
        printf $FLSYM_ROOT_ROOT
    else
        __fishline_segment $FLCLR_ROOT_BG_USER $FLCLR_ROOT_FG_USER
        printf $FLSYM_ROOT_USER
    end

end
