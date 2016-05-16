#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_SPACE

    echo "Context: SPACE segment after ARROW segment"
    __fishline_test ARROW SPACE
    echo "Context: SPACE segment between CLOCK and ARROW segments"
    __fishline_test CLOCK SPACE ARROW

end
