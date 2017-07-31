#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_screen

    echo "Context: STY var is set to 'fishline_test'"
    set -gx STY fishline_test
    __fishline_test STY

end
