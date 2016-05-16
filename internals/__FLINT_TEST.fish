#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __FLINT_TEST --argument-names SEGMENT -d 'test segments'

    set -gx FLINT_TEST_SEG $SEGMENT
    if not set -q TEST_STATUS
        set -gx FLINT_TEST_STATUS 0
    end

    function FLINT_TEST_RIGHT --argument-names LAST_STATUS
        fishline -r -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
    end

    function FLINT_TEST_LEFT --argument-names LAST_STATUS
        fishline -l -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
    end

    read -R FLINT_TEST_RIGHT -p FLINT_TEST_LEFT

end
