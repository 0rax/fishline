#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_version

    pushd $FLINE_PATH > /dev/null
    set -l fline_version (git describe --tag)
    popd > /dev/null

    printf "fishline %s\n" $fline_version

end
