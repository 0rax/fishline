#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_write

    set _OLDPWD $PWD
    echo "Context: Current Working Directory is '/tmp' which should be user writable"
    cd /tmp
    __fishline_test WRITE
    echo "Context: Current Working Directory is '/' which should not be user writable"
    cd /
    __fishline_test WRITE
    cd $_OLDPWD

end
