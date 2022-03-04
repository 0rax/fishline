#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_test --argument-names segment -d 'test segments'

    set -g FLINT_TEST_SEG $segment
    if not set -q FLINT_TEST_STATUS
        set -g FLINT_TEST_STATUS 0
    end

    function flint_test_right
        fishline -r -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
    end

    function flint_test_left
        fishline -l -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
    end

    read -R flint_test_right -p flint_test_left TEST_VAR

    set -e FLINT_TEST_VAR
    set -e FLINT_TEST_SEG
    set -e FLINT_TEST_STATUS

end
