#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_EXECTIME

    echo "Context: Last command took 42ms to complete"
    set -gx CMD_DURATION 42
    FLINT_TEST EXECTIME

    echo "Context: Last command took 360ms to complete"
    set -gx CMD_DURATION 360
    FLINT_TEST EXECTIME

    echo "Context: Last command took 1042ms to complete"
    set -gx CMD_DURATION 21042
    FLINT_TEST EXECTIME

    echo "Context: Last command took 162042ms to complete"
    set -gx CMD_DURATION 162320
    FLINT_TEST EXECTIME

end
