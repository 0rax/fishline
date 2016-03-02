#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_JOBS "\u2668 "

function FLTEST_JOBS

	echo "Context: no background jobs"
	FLINT_TEST JOBS
	echo "Context: 1 background job"
	sleep 0.05s &
	FLINT_TEST JOBS
	sleep 0.05s
	echo "Context: 2 background job"
	sleep 0.05s &
	sleep 0.05s &
	FLINT_TEST JOBS

end

function FLSEG_JOBS

	if [ (jobs | wc -l) -gt 0 ]
		FLINT_CLOSE $FLCLR_JOBS_BG $FLCLR_JOBS_FG
		printf $FLSYM_JOBS
	end

end
