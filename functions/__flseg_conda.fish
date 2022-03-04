#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_conda

    if set -q CONDA_DEFAULT_ENV
        __fishline_segment $FLCLR_CONDA_BG $FLCLR_CONDA_FG
        printf "$FLSYM_CONDA"(basename $CONDA_DEFAULT_ENV)
    end

end
