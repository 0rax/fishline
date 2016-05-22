#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_separator

    if [ "$FLINT_POSITION" = "left" -a "$FLSYM_LEFT_CLOSE" = "" \
         -o "$FLINT_POSITION" = "right" -a "$FLSYM_RIGHT_OPEN" = "" ]
        __flseg_space
    else
        set -l save_left_post  $FLSYM_LEFT_POST
        set -l save_right_post $FLSYM_RIGHT_POST
        set FLSYM_LEFT_POST  ""
        set FLSYM_RIGHT_POST ""
        __fishline_segment $FLCLR_SEPARATOR_BG normal
        set FLSYM_LEFT_POST  $save_left_post
        set FLSYM_RIGHT_POST $save_right_post
    end

end
