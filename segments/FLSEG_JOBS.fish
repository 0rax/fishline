#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_JOBS

    if [ (jobs | wc -l) -gt 0 ]
        __FLINT_SEGMENT $FLCLR_JOBS_BG $FLCLR_JOBS_FG
        printf $FLSYM_JOBS
    end

end
