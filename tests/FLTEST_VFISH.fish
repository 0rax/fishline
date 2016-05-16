#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_VFISH

    echo "Context: VIRTUAL_ENV var is set to 'fishline_test'"
    set -gx VIRTUAL_ENV fishline_test
    __fishline_test VFISH

end
