#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_segment_close -d "close the previous fishline segment"

    if [ "$FLINT_FIRST" != "true" ]
        set FLINT_LAST       true
        __fishline_segment normal normal
        set FLINT_FIRST      true
    end

end
