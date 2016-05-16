#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_segment_close -d "close the previous fishline segment"

    set FLINT_LAST True
    __fishline_segment normal normal
    set FLINT_LAST False

    set FLINT_FIRST True

end
