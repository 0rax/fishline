#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_SPACE

    echo "Context: SPACE segment after ARROW segment"
    __FLINT_TEST ARROW SPACE
    echo "Context: SPACE segment between CLOCK and ARROW segments"
    __FLINT_TEST CLOCK SPACE ARROW

end
