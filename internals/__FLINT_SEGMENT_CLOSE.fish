#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __FLINT_SEGMENT_CLOSE -d "close the previous fishline segment"

    set FLINT_LAST True
    __FLINT_SEGMENT normal normal
    set FLINT_LAST False

    set FLINT_FIRST True

end
