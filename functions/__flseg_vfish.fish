#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_vfish

    if set -q VIRTUAL_ENV
        __fishline_segment $FLCLR_VFISH_BG $FLCLR_VFISH_FG
        printf "$FLSYM_VFISH%s" (basename $VIRTUAL_ENV)
    end

end
