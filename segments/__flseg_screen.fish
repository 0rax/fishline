#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_screen

    if set -q STY
        __fishline_segment $FLCLR_SCREEN_BG $FLCLR_SCREEN_FG
        printf "$FLSYM_SCREEN"(echo $STY | cut -d'.' -f2-)
    end

end
