#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_ROOT

    echo "Context: USER is set to the current user"
    __FLINT_TEST ROOT
    echo "Context: USER is set to 'root'"
    set USER root
    __FLINT_TEST ROOT

end
