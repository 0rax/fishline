#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_STATUS

    echo "Context: Last command returned with exit code '1'"
    set -gx __FLINT_TEST_STATUS 1
    __FLINT_TEST STATUS
    echo "Context: Last called command was not executable"
    set -gx __FLINT_TEST_STATUS 126
    __FLINT_TEST STATUS
    echo "Context: Last called command was not found"
    set -gx __FLINT_TEST_STATUS 127
    __FLINT_TEST STATUS
    echo "Context: Last command was killed by 'SIGINT'"
    set -gx __FLINT_TEST_STATUS 130
    __FLINT_TEST STATUS
    echo "Context: Last command returned with exit code '160'"
    set -gx __FLINT_TEST_STATUS 160
    __FLINT_TEST STATUS
    echo "Context: Last command returned with exit code '255'"
    set -gx __FLINT_TEST_STATUS 255
    __FLINT_TEST STATUS

end
