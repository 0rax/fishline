#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_WRITE

    set _OLDPWD $PWD
    echo "Context: Current Working Directory is '/tmp' which should be user writable"
    cd /tmp
    FLINT_TEST WRITE
    echo "Context: Current Working Directory is '/' which should not be user writable"
    cd /
    FLINT_TEST WRITE
    cd $_OLDPWD

end
