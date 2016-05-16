#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_sigstatus

    echo "Context: Last command returned with exit code '1'"
    set -gx FLINT_TEST_STATUS 1
    __fishline_test SIGSTATUS
    echo "Context: Last called command was not executable"
    set -gx FLINT_TEST_STATUS 126
    __fishline_test SIGSTATUS
    echo "Context: Last called command was not found"
    set -gx FLINT_TEST_STATUS 127
    __fishline_test SIGSTATUS
    echo "Context: Last command was killed by 'SIGINT'"
    set -gx FLINT_TEST_STATUS 130
    __fishline_test SIGSTATUS
    echo "Context: Last command returned with exit code '160'"
    set -gx FLINT_TEST_STATUS 160
    __fishline_test SIGSTATUS
    echo "Context: Last command returned with exit code '255'"
    set -gx FLINT_TEST_STATUS 255
    __fishline_test SIGSTATUS

end
