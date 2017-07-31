#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_screen

    echo "Context: STY var is set to 'fishline_test'"
    set -gx STY 76230.test123
    __fishline_test STY

    set -gx 69359.ttys001.Providence
    __fishline_test STY

    set -gx STY 20424.pts-0.userctl
    __fishline_test STY
end
