#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_jobs

    if [ (jobs | wc -l) -gt 0 ]
        __fishline_segment $FLCLR_JOBS_BG $FLCLR_JOBS_FG
        printf $FLSYM_JOBS
    end

end
