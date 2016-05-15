#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINT_VERSION

    set -l fline_version
    set -l fline_commit
    set -l fline_repo "https://github.com/0rax/fishline"

    pushd $FLINE_PATH > /dev/null
    set fline_version (git describe --tag)
    set fline_commit  (git rev-parse --verify --short HEAD)
    popd > /dev/null

    printf "fishline %s [%s] (%s)\n" $fline_version $fline_commit $fline_repo

end
