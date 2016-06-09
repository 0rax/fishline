#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_separator

    __fishline_segment "$FLCLR_SEPARATOR_BG" "$FLCLR_SEPARATOR_FG" false false
    printf "$FLSYM_SEPARATOR_SEG"

end
