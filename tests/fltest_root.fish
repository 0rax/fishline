#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_root

    echo "Context: USER is set to the current user"
    __fishline_test ROOT
    echo "Context: USER is set to 'root'"
    set USER root
    __fishline_test ROOT

end
