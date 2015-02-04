#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set -g FLSYM_JOBS		"\u2699"

function FLSEG_JOBS

	if [ (jobs | wc -l) -gt 0 ]
		FLINT_CLOSE $FLCLR_JOBS_BG $FLCLR_JOBS_FG
		printf $FLSYM_JOBS
	end

end
