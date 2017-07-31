#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_screen

    echo "Context: STY var is set to '76230.fishline_test' (custom session name)"
    set -gx STY 76230.fishline_test
    __fishline_test SCREEN

    echo "Context: STY var is set to '69359.ttys001.MacbookPro' (automated OSX session name)"
    set -gx STY 69359.ttys001.MacbookPro
    __fishline_test SCREEN

    echo "Context: STY var is set to '20424.pts-0.debian' (automated Linux session name)"
    set -gx STY 20424.pts-0.debian
    __fishline_test SCREEN

end
