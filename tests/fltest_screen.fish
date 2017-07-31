#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_screen

    echo "Context: STY var is set to 'fishline_test'"
    # Test for custom session names
    set -gx STY 76230.test123
    __fishline_test SCREEN

    # Automated OSX-style name
    set -gx STY 69359.ttys001.Providence
    __fishline_test SCREEN

    # Automated linux-style name
    set -gx STY 20424.pts-0.userctl
    __fishline_test SCREEN
end
