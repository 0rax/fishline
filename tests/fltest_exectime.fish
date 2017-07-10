#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_exectime

    echo "Context: Last command took 42ms to complete"
    set -gx CMD_DURATION 42
    __fishline_test EXECTIME

    echo "Context: Last command took 360ms to complete"
    set -gx CMD_DURATION 360
    __fishline_test EXECTIME

    echo "Context: Last command took 1042ms to complete"
    set -gx CMD_DURATION 21042
    __fishline_test EXECTIME

    echo "Context: Last command took 162042ms to complete"
    set -gx CMD_DURATION 162320
    __fishline_test EXECTIME

    echo "Context: Last command took 72162042ms to complete"
    set -gx CMD_DURATION 72162042
    __fishline_test EXECTIME

end
